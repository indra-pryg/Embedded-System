int val = 0;
int tempPin = A0;
char nilai;

void setup(){
  Serial.begin(9600);
}

void loop(){
    val = analogRead(tempPin);
    Serial.print(val);
    Serial.println(" ");
    delay(100);
}
