#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);
  lcd.setCursor(0,0);
  lcd.print("hello, world!");
  delay(500);
  lcd.clear();
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print(" labelektronika ");
  lcd.setCursor(0, 1);
  lcd.print(millis() / 1000);
}#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

void setup() {
  lcd.begin(16, 2);
  lcd.setCursor(0,0);
  lcd.print("hello, world!");
  delay(500);
  lcd.clear();
}

void loop() {
  lcd.setCursor(0,0);
  lcd.print(" labelektronika ");
  lcd.setCursor(0, 1);
  lcd.print(millis() / 1000);

