//#include "UbidotsMicroESP8266.h"
#include <Ticker.h>
#include <SoftwareSerial.h>

SoftwareSerial NodeSerial(4, 0); //Rx || Tx

Ticker flipper;
/*
#define TOKEN  "dGcS5ePIh9CVVpdVN2IRj5uOzBOIDg"  // Put here your Ubidots TOKEN
#define ID_1 "5910976f76254222e70ebb3b" // Put your variable ID here
#define ID_2 "5910977076254222e70ebb49" // Put your variable ID here
#define ID_3 "5910977a76254222e70ebc2c" // Put your variable ID here
#define ID_4 "5910978576254222e34e37cc" // Put your variable ID here
#define WIFISSID "iExploit" // Put here your Wi-Fi SSID
#define PASSWORD "skripsi123" // Put here your Wi-Fi password
*/
//  VARIABLES
volatile float celcius;
volatile int value0;
int reading;
int inPin0;

float val;

int blinkPin = 16;                // pin to blink led at each beat
int fadePin = 20;                 // pin to do fancy classy fading blink at each beat
int fadeRate = 0;                 // used to fade LED on with PWM on fadePin


// these variables are volatile because they are used during the interrupt service routine!
volatile int BPM;                   // used to hold the pulse rate
volatile int Signal;                // holds the incoming raw data
volatile int IBI = 600;             // holds the time between beats, must be seeded! 
volatile boolean Pulse = false;     // true when pulse wave is high, false when it's low
volatile boolean QS = false;        // becomes true when Arduoino finds a beat.

//Ubidots client(TOKEN);

void setup(){
  pinMode(blinkPin,OUTPUT);         // pin that will blink to your heartbeat!
  pinMode(fadePin,OUTPUT);          // pin that will fade to your heartbeat!
  Serial.begin(115200);             // we agree to talk fast!
  delay(10);
  //client.wifiConnection(WIFISSID, PASSWORD);
  interruptSetup();                 // sets up to read Pulse Sensor signal every 2mS 
  NodeSerial.begin(4800);
   // UN-COMMENT THE NEXT LINE IF YOU ARE POWERING The Pulse Sensor AT LOW VOLTAGE, 
   // AND APPLY THAT VOLTAGE TO THE A-REF PIN  
}

void loop(){
  while(NodeSerial.available() > 0){
      val = NodeSerial.parseFloat();
      if(NodeSerial.read() == '\n'){
     //     Serial.println(val);
          delay(20);
        }
    }
  
  //sendDataToProcessing('S', Signal);     // send Processing the raw Pulse Sensor data
  if (QS == true){                       // Quantified Self flag is true when arduino finds a heartbeat
        fadeRate = 255;                  // Set 'fadeRate' Variable to 255 to fade LED with pulse
      //  sendDataToProcessing('B',BPM);   // send heart rate with a 'B' prefix
      //  sendDataToProcessing('Q',IBI);   // send time between beats with a 'Q' prefix
        QS = false;                      // reset the Quantified Self flag for next time    
     }
  
  ledFadeToBeat();
  /*
  client.add(ID_1, BPM);
  client.add(ID_2, IBI);
  client.add(ID_3, Signal);
  client.add(ID_4, val);
  client.sendAll(false);
  */
 
  Serial.print(BPM);
  Serial.print(" || ");
  Serial.print(IBI);
  Serial.print(" || ");
  Serial.print(Signal);
  Serial.print(" || ");
  Serial.println(val);
  delay(20);                             //  take a break
}


void ledFadeToBeat(){
    fadeRate -= 15;                         //  set LED fade value
    fadeRate = constrain(fadeRate,0,255);   //  keep LED fade value from going into negative numbers!
    analogWrite(fadePin,fadeRate);          //  fade LED
  }


void sendDataToProcessing(char symbol, int data ){
    Serial.print(symbol);                // symbol prefix tells Processing what type of data is coming
    Serial.println(data);                // the data to send culminating in a carriage return
  }

volatile int rate[10];                    // array to hold last ten IBI values
volatile unsigned long sampleCounter = 0; // used to determine pulse timing
volatile unsigned long lastBeatTime = 0;  // used to find IBI
volatile int P =512;                      // used to find peak in pulse wave, seeded
volatile int T = 512;                     // used to find trough in pulse wave, seeded
volatile int thresh = 512;                // used to find instant moment of heart beat, seeded
volatile int amp = 100;                   // used to hold amplitude of pulse waveform, seeded
volatile boolean firstBeat = true;        // used to seed rate array so we startup with reasonable BPM
volatile boolean secondBeat = false;      // used to seed rate array so we startup with reasonable BPM


void interruptSetup(){     
// Initializes Ticker to have flipper run the ISR to sample every 2mS as per original Sketch.
  flipper.attach_ms(2, ISRTr);     
} 


// THIS IS THE TICKER INTERRUPT SERVICE ROUTINE. 
// Ticker makes sure that we take a reading every 2 miliseconds
void ISRTr(){                         // triggered when flipper fires....
  cli();                               // disable interrupts while we do this
  Signal = analogRead(0);              // read the Pulse Sensor 
  //value0 = analogRead(0);
  sampleCounter += 2;                         // keep track of the time in mS with this variable
  int N = sampleCounter - lastBeatTime;       // monitor the time since the last beat to avoid noise

    //  find the peak and trough of the pulse wave
  if(Signal < thresh && N > (IBI/5)*3){       // avoid dichrotic noise by waiting 3/5 of last IBI
    if (Signal < T){                        // T is the trough
      T = Signal;                         // keep track of lowest point in pulse wave 
    }
  }

  if(Signal > thresh && Signal > P){          // thresh condition helps avoid noise
    P = Signal;                             // P is the peak
  }                                        // keep track of highest point in pulse wave

  //  NOW IT'S TIME TO LOOK FOR THE HEART BEAT
  // signal surges up in value every time there is a pulse
  if (N > 250){                                   // avoid high frequency noise
    if ( (Signal > thresh) && (Pulse == false) && (N > (IBI/5)*3) ){        
      Pulse = true;                               // set the Pulse flag when we think there is a pulse
      digitalWrite(blinkPin,HIGH);                // turn on pin 13 LED
      IBI = sampleCounter - lastBeatTime;         // measure time between beats in mS
      lastBeatTime = sampleCounter;               // keep track of time for next pulse

      if(secondBeat){                        // if this is the second beat, if secondBeat == TRUE
        secondBeat = false;                  // clear secondBeat flag
        for(int i=0; i<=9; i++){             // seed the running total to get a realisitic BPM at startup
          rate[i] = IBI;                      
        }
      }

      if(firstBeat){                         // if it's the first time we found a beat, if firstBeat == TRUE
        firstBeat = false;                   // clear firstBeat flag
        secondBeat = true;                   // set the second beat flag
        sei();                               // enable interrupts again
        return;                              // IBI value is unreliable so discard it
      }   


      // keep a running total of the last 10 IBI values
      word runningTotal = 0;                  // clear the runningTotal variable    

      for(int i=0; i<=8; i++){                // shift data in the rate array
        rate[i] = rate[i+1];                  // and drop the oldest IBI value 
        runningTotal += rate[i];              // add up the 9 oldest IBI values
      }

      rate[9] = IBI;                          // add the latest IBI to the rate array
      runningTotal += rate[9];                // add the latest IBI to runningTotal
      runningTotal /= 10;                     // average the last 10 IBI values 
      BPM = 60000/runningTotal;               // how many beats can fit into a minute? that's BPM!
    //  float millivolts = (value0 / 1024.0)*5000;
    //  celcius = millivolts / 30;
      QS = true;                              // set Quantified Self flag 
      // QS FLAG IS NOT CLEARED INSIDE THIS ISR
    }                       
  }

  if (Signal < thresh && Pulse == true){   // when the values are going down, the beat is over
    digitalWrite(blinkPin,LOW);            // turn off pin 13 LED
    Pulse = false;                         // reset the Pulse flag so we can do it again
    amp = P - T;                           // get amplitude of the pulse wave
    thresh = amp/2 + T;                    // set thresh at 50% of the amplitude
    P = thresh;                            // reset these for next time
    T = thresh;
  }

  if (N > 2500){                           // if 2.5 seconds go by without a beat
    thresh = 512;                          // set thresh default
    P = 512;                               // set P default
    T = 512;                               // set T default
    lastBeatTime = sampleCounter;          // bring the lastBeatTime up to date        
    firstBeat = true;                      // set these to avoid noise
    secondBeat = false;                    // when we get the heartbeat back
  }

  sei();                                   // enable interrupts when youre done!
}// end isr
