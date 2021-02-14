char val;
int ps0 = 6;
int ps1 = 7;
int ps2 = 8;
int ps3 = 9;
int ps4 = 10;
int ps5 = 11;
int ps6 = 12;
int ps7 = 13;

int a,st,s0,s1,s2,s3,s4,s5,s6,s7;

void setup() {
  // put your setup code here, to run once:
  pinMode(ps0,INPUT);
  pinMode(ps1,INPUT);
  pinMode(ps2,INPUT);
  pinMode(ps3,INPUT);
  pinMode(ps4,INPUT);
  pinMode(ps5,INPUT);
  pinMode(ps6,INPUT);
  pinMode(ps7,INPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
   if (Serial.available()>0){
    val = Serial.read();
   }  
    if(val == '1'){
      s0=digitalRead(ps0);
      s1=digitalRead(ps1);
      s2=digitalRead(ps2);
      s3=digitalRead(ps3);
      s4=digitalRead(ps4);
      s5=digitalRead(ps5);
      s6=digitalRead(ps6);
      s7=digitalRead(ps7);
    
      st=s0*1+s1*2+s2*4+s3*8+s4*16+s5*32+s6*64+s7*128;
    
      Serial.print(st);
    }

    if (val == 'a'){
      digitalWrite(2, HIGH);    
      digitalWrite(3, HIGH);      
      digitalWrite(4, HIGH);      
      digitalWrite(5, HIGH);
      delay(100);
    } //else 
    if (val == 'b'){
      digitalWrite(2, LOW);    
      digitalWrite(3, LOW);      
      digitalWrite(4, LOW);      
      digitalWrite(5, LOW);
      delay(100);  
    } //else
    if (val == 'c'){
      digitalWrite(2, HIGH);
      delay(250);
      digitalWrite(2, LOW);
      delay(250);
      digitalWrite(3, HIGH);
      delay(250);
      digitalWrite(3, LOW);
      delay(250);
      digitalWrite(4, HIGH);
      delay(250);
      digitalWrite(4, LOW);
      delay(250);
      digitalWrite(5, HIGH);
      delay(250);
      digitalWrite(5, LOW);
      delay(250);  
    } //else 
    if (val == 'd'){
      digitalWrite(2, LOW);    
      digitalWrite(3, LOW);      
      digitalWrite(4, LOW);      
      digitalWrite(5, LOW);
      delay(100);  
    } //else
    if (val == 'e'){
      digitalWrite(5, HIGH);
      delay(100);
      digitalWrite(5, LOW);
      delay(100);
      digitalWrite(4, HIGH);
      delay(100);
      digitalWrite(4, LOW);
      delay(100);
      digitalWrite(3, HIGH);
      delay(100);
      digitalWrite(3, LOW);
      delay(100);
      digitalWrite(2, HIGH);
      delay(100);
      digitalWrite(2, LOW);
      delay(100);
    } //else 
    if (val == 'f'){
      digitalWrite(2, LOW);    
      digitalWrite(3, LOW);      
      digitalWrite(4, LOW);      
      digitalWrite(5, LOW);
      delay(100);  
    } //else
    if (val == 'z'){
    
      digitalWrite(2, HIGH);    
      digitalWrite(3, HIGH);      
      digitalWrite(4, HIGH);      
      digitalWrite(5, HIGH);
      delay(500); 
      digitalWrite(2, HIGH);
      delay(500);
      digitalWrite(2, LOW);
      delay(500);
      digitalWrite(3, HIGH);
      delay(500);
      digitalWrite(3, LOW);
      delay(500);
      digitalWrite(4, HIGH);
      delay(500);
      digitalWrite(4, LOW);
      delay(500);
      digitalWrite(5, HIGH);
      delay(500);
      digitalWrite(5, LOW);
      delay(500);
/*
      digitalWrite(5, HIGH);
      delay(25);
      digitalWrite(5, LOW);
      delay(25);
      digitalWrite(4, HIGH);
      delay(25);
      digitalWrite(4, LOW);
      delay(25);
      digitalWrite(3, HIGH);
      delay(25);
      digitalWrite(3, LOW);
      delay(25);
      digitalWrite(2, HIGH);
      delay(25);
      digitalWrite(2, LOW);
      delay(225);
      */
    }
  }  
