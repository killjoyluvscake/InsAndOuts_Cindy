void on(int led) {
  digitalWrite(led, HIGH);
}

void off(int led) {
  digitalWrite(led, LOW);
}

void send(int num) {
  Serial.write(num);
}

void redLight() {
  on(red);
  delay(1000);
}

void yellowLight() {
  on(yellow);
  delay(1000);
}

void greenLight() {
  on(green);
  delay(1000);
}

void gear1() {
  small.write(90);
  delay(500);
  small.write(180);
  delay(500);
  small.write(90);
  delay(500);
  small.write(0);
  delay(500);
}

void gear2() {
  small.write(90);
  medium.write(90);
  delay(500);
  small.write(180);
  medium.write(180);
  delay(500);
  small.write(90);
  medium.write(90);
  delay(500);
  small.write(0);
  medium.write(0);
  delay(500);
}

void gear3() {
  medium.write(90);
  large.write(90);
  delay(500);
  medium.write(180);
  large.write(180);
  delay(500);
  medium.write(90);
  large.write(90);
  delay(500);
  medium.write(0);
  large.write(0);
  delay(500);
}

void reset() {
  stage = 0;
  off(red);
  off(yellow);
  off(green);
}
