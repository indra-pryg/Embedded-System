/*
 * program Akuisisi Data Robot Soccer
 */

// MOTOR KIRI
int motor1Pin1 = 9;
int motor1Pin2 = 8;
int enable1Pin = 11;

// MOTOR KANAN
int motor2Pin1 = 10;
int motor2Pin2 = 7;
int enable2Pin = 6;

// MOTOR DC 5V
int pin5 = 5;

int state;
int flag=0;
int stateStop=0;

void setup() {
    // Set Motor DC sebagai output:
    pinMode(motor1Pin1, OUTPUT);
    pinMode(motor1Pin2, OUTPUT);
    pinMode(enable1Pin, OUTPUT);
    
    pinMode(motor2Pin1, OUTPUT);
    pinMode(motor2Pin2, OUTPUT);
    pinMode(enable2Pin, OUTPUT);
    
    pinMode(pin5, OUTPUT);
    
    // Set Enable pada 2 buah Motor DC
    digitalWrite(enable1Pin, HIGH);
    digitalWrite(enable2Pin, HIGH);
    // inisialisasi komunikasi serial
    Serial.begin(9600);
}

void loop() {
    // Jika data diterima, maka dimasukkan ke variabel state
    if(Serial.available() > 0){    
      state = Serial.read();  
      flag=0;
    }  
    // Jika state = F, maka Motor DC bergerak mundur
    if (state == 'F') {
  
        digitalWrite(motor1Pin1, HIGH);// MOTOR KANAN Mundur
        digitalWrite(motor1Pin2, LOW);
        
        digitalWrite(motor2Pin1, HIGH);// MOTOR KIRI Mundur
        digitalWrite(motor2Pin2, LOW);
        
        if(flag == 0){
          Serial.println("MUNDUR TAK GENTAR!");
          flag=1;
        }
    }
   
    // Jika state = L, maka Motor DC berbelok ke kiri
    else if (state == 'L') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN MAJU
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI MATI
        digitalWrite(motor2Pin2, LOW);
        if(flag == 0){
          Serial.println("BELOK KIRI GAN!");
          flag=1;
        }
        delay(300);
        state=3;
        stateStop=1;
    }
    // Jika state = R, maka Motor DC berbelok ke kanan
    else if (state == 'R') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN MATI
        digitalWrite(motor1Pin2, LOW);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI MAJU
        digitalWrite(motor2Pin2, HIGH);
        if(flag == 0){
          Serial.println("BELOK KANAN GAN!");
          flag=1;
        }
        delay(300);
        state=3;
        stateStop=1;
    }    
    // Jika state = B, maka Motor DC bergerak maju
    else if (state == 'B') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN maju
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI maju
        digitalWrite(motor2Pin2, HIGH);

        analogWrite(enable1Pin, 160);
        analogWrite(enable2Pin, 160);
        
        if(flag == 0){
          Serial.println("MAJU KE PELAMINAN!");
          flag=1;
        }
    }

    else if (state == 'C') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN maju
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI maju
        digitalWrite(motor2Pin2, HIGH);

        analogWrite(enable1Pin, 180);
        analogWrite(enable2Pin, 180);
        
        if(flag == 0){
          Serial.println("MAJU KE PELAMINAN!");
          flag=1;
        }
    }

    else if (state == 'D') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN maju
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI maju
        digitalWrite(motor2Pin2, HIGH);

        analogWrite(enable1Pin, 200);
        analogWrite(enable2Pin, 200);
        
        if(flag == 0){
          Serial.println("MAJU KE PELAMINAN!");
          flag=1;
        }
    }

    else if (state == 'E') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN maju
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI maju
        digitalWrite(motor2Pin2, HIGH);

        analogWrite(enable1Pin, 220);
        analogWrite(enable2Pin, 220);
        
        if(flag == 0){
          Serial.println("MAJU KE PELAMINAN!");
          flag=1;
        }
    }

    else if (state == 'G') {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN maju
        digitalWrite(motor1Pin2, HIGH);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI maju
        digitalWrite(motor2Pin2, HIGH);

        analogWrite(enable1Pin, 255);
        analogWrite(enable2Pin, 255);
        
        if(flag == 0){
          Serial.println("MAJU KE PELAMINAN!");
          flag=1;
        }
    }
    
    // Jika state = S, maka Motor DC akan berhenti
    else if (state == 'S' || stateStop == 1) {
        digitalWrite(motor1Pin1, LOW);// MOTOR KANAN MATI
        digitalWrite(motor1Pin2, LOW);
        
        digitalWrite(motor2Pin1, LOW);// MOTOR KIRI MATI
        digitalWrite(motor2Pin2, LOW);
        if(flag == 0){
          Serial.println("BERHENTI DULU");
          flag=1;
        }
        stateStop=0;
    }

    else if(state == 'V'){
        digitalWrite(pin5, HIGH);
        delay(100);
      }

    /*
   // Jika state = S, maka Motor Kopling 1
   else if (state == 'Q') {
        analogWrite(motor1Pin1, 0);
        analogWrite(motor1Pin2, 130);
        
        analogWrite(motor2Pin1, 0);
        analogWrite(motor2Pin2, 130);
   }
   // Jika state = S, maka Motor Kopling 2
   else if (state == 'W') {
        analogWrite(motor1Pin1, 0);
        analogWrite(motor1Pin2, 160);
        
        analogWrite(motor2Pin1, 0);
        analogWrite(motor2Pin2, 160);
   }
  // Jika state = S, maka Motor Kopling 3
   else if (state == 'E') {
        analogWrite(motor1Pin1, 0);
        analogWrite(motor1Pin2, 193);
        
        analogWrite(motor2Pin1, 0);
        analogWrite(motor2Pin2, 193);
   }
  // Jika state = S, maka Motor Kopling 4
   else if (state == 'T') {
        analogWrite(motor1Pin1, 0);
        analogWrite(motor1Pin2, 224);
        
        analogWrite(motor2Pin1, 0);
        analogWrite(motor2Pin2, 224);
   }
  // Jika state = S, maka Motor Kopling 5
   else if (state == 'Y') {
        analogWrite(motor1Pin1, 0);
        analogWrite(motor1Pin2, 255);
        
        analogWrite(motor2Pin1, 0);
        analogWrite(motor2Pin2, 255);
   }
  // Motor DC untuk Menendang
  else if (state == 'U') {
        digitalWrite(pin10, HIGH);   
   }
  // Motor DC untuk Stop Menendang
  else if (state == 'I') {
        digitalWrite(pin10, LOW);   
   }  
   */
} 
