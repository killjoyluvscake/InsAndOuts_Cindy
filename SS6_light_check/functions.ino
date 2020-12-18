void buttonPress() {
  if(digitalRead(button) == LOW){
  pressed++;}
}

void on(int led, int t) {
  digitalWrite(led, HIGH);
  delay(t);
}
void off(int led) {
  digitalWrite(led, LOW);
  delay(125);
}

void quarter(int led){
  on(led, 250);
  off(led);  
}

void half(int led){
  on(led, 500);
  off(led);  
}

void test(){
  quarter(blue);
  quarter(blue);
  quarter(blue);
  delay(250);
  
  quarter(yellow);
  quarter(yellow);
  quarter(yellow);
  delay(250);
  
  quarter(red);
  quarter(red);
  quarter(red);
  delay(250);
  
  quarter(green);
  quarter(green);
  quarter(green);
  delay(250);
  
  quarter(white);
  quarter(white);
  quarter(white);
  delay(250);
}

void song(){
  quarter(red);
  quarter(red);
  quarter(red);
  quarter(green);
  
  half(white);
  half(green);

  quarter(red);
  quarter(white);
  quarter(green);
  quarter(green);

  half(red);
}
