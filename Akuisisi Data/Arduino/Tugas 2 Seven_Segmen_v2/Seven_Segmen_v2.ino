/* Simple Serial ECHO script : Written by ScottC 03/07/2012 */
/* Use a variable called byteRead to temporarily store
   the data coming from the computer */
char incomingByte;
byte databyte;
String data;

#define A 2
#define B 3
#define C 4
#define D 5
#define E 6
#define F_SEG 7
#define G 8

// Pins driving common anodes
#define CA1 11
#define CA2 10
#define CA3 12
#define CA4 13

// Pins for A B C D E F G, in sequence
const int segs[7] = { A, B, C, D, E, F_SEG, G };

// Segments that make each number
const byte numbers[10] = { 0b1000000, 0b1111001, 0b0100100, 0b0110000, 0b0011001, 0b0010010,
0b0000010, 0b1111000, 0b0000000, 0b0010000 };

int digit1, digit2, digit3, digit4;

int vals[6];
int j, k, l, m;

void setup() {                
// Turn the Serial Protocol ON
  pinMode(A, OUTPUT);
  pinMode(B, OUTPUT);
  pinMode(C, OUTPUT);
  pinMode(D, OUTPUT);
  pinMode(E, OUTPUT);
  pinMode(F_SEG, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(CA1, OUTPUT);
  pinMode(CA2, OUTPUT);
  pinMode(CA3, OUTPUT);
  pinMode(CA4, OUTPUT);
  
  Serial.begin(9600);
}

void loop() {
/////////////////////////////////////////////////////////////
   /*  check if data has been sent from the computer: */
  if (Serial.available() > 0) {
   incomingByte = databyte = Serial.read();
   if(databyte != 'a'){
   data = data + incomingByte;
   }
   else{
   digit1 = (data.toInt())/ 1000;
   digit2 = (data.toInt() / 100) % 10;
   digit3 = (data.toInt() /10) % 10;
   digit4 = (data.toInt()) % 10;
   
   Serial.print(data.toInt());
   Serial.print(' ');
   Serial.print(digit1);
   Serial.print(digit2);
   Serial.print(digit3);
   Serial.println(digit4);
   data="";
   }
  }
  if(digit1==6 && digit2==1 && digit3==0 && digit4==0)
  {
    digitalWrite(CA4, LOW);
  }
  else if(digit1==0 && digit2==0 && digit3==0)
  {
    lightDigit4(numbers[digit4]);
    delay(5);
  }
  else if(digit1==0 && digit2==0)
  {
    lightDigit3(numbers[digit3]);
    delay(5);
    lightDigit4(numbers[digit4]);
    delay(5);
  }
  else if(digit1==0)
  {
    lightDigit2(numbers[digit2]);
    delay(5);
    lightDigit3(numbers[digit3]);
    delay(5);
    lightDigit4(numbers[digit4]);
    delay(5);
  }
  else
  {
  lightDigit1(numbers[digit1]);
  delay(5);
  lightDigit2(numbers[digit2]);
  delay(5);
  lightDigit3(numbers[digit3]);
  delay(5);
  lightDigit4(numbers[digit4]);
  delay(5);
  }
////////////////////////////////////////////////////
  if(databyte == 'b')
  {
 
  }
////////////////////////////////////////////////////
}
////////////////////////////////////////////////////

void lightDigit1(byte number) {
  digitalWrite(CA1, LOW);
  digitalWrite(CA2, HIGH);
  digitalWrite(CA3, LOW);
  digitalWrite(CA4, LOW);
  lightSegments(number);
}

void lightDigit2(byte number) {
  digitalWrite(CA1, HIGH);
  digitalWrite(CA2, LOW);
  digitalWrite(CA3, LOW);
  digitalWrite(CA4, LOW);
  lightSegments(number);
}

void lightDigit3(byte number) {
  digitalWrite(CA1, LOW);
  digitalWrite(CA2, LOW);
  digitalWrite(CA3, HIGH);
  digitalWrite(CA4, LOW);
  lightSegments(number);
}

void lightDigit4(byte number) {
  digitalWrite(CA1, LOW);
  digitalWrite(CA2, LOW);
  digitalWrite(CA3, LOW);
  digitalWrite(CA4, HIGH);
  lightSegments(number);
}

void lightSegments(byte number) {
  for (int i = 0; i < 7; i++) {
    int bit = bitRead(number, i);
    digitalWrite(segs[i], bit);
}
}
