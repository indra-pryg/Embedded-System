  // put your setup code here, to run once:
int pinPot = A0;   // pin untuk menerima sinyal analog dari potensiometer
int val = 0;       // variabel untuk menyimpan nilai konversi analog ke digital

void setup()
{
  Serial.begin(9600);  // setup koneksi serial
}

void loop() {
  
  val = analogRead(pinPot);    // baca nilai analog dari potensiometer
  Serial.print(" ");
  Serial.print(val);         // kirim nilai val ke koneksi serial
  Serial.print(" ");
  Serial.print(val);
  delay(100);                  // beri jeda hingga pengulangan selanjutnya
}

