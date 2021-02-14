#include <SoftwareSerial.h>

#if defined(_AVR_ATmega1280_)||defined(_AVR_ATmega2560)
#define INTERNAL1V1 2
#define INTERNAL2V56 3
#else
#define INTERNAL 3
#endif

SoftwareSerial ArduinoSerial(3,2); //RX || TX

float d, tegangan, ce, j, pin0 = 0;
const float s = A0;

void setup() {
  pinMode(3, INPUT);
  pinMode(2, OUTPUT);
  Serial.begin(115200);
  ArduinoSerial.begin(4800);
  analogReference(INTERNAL);
  pinMode(s, INPUT);
}

void loop() {
  d = analogRead(s);  
  ce = (d+5)/10.24;
  ArduinoSerial.println(ce+2);
  Serial.println(ce+2);
  delay(500);
}
