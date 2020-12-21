/*
  Author: Cindy Mei
  Date: 12.21.20
  Notes: Starts from processing end. Sends signals back and forth in order to run.
  ***Couldn't figure out how to translate Processing to Arduino timer class, so uses 
  delays instead.***
*/

#include <Servo.h>

Servo small, medium, large;
int red, yellow, green;

int stage = 0;

void setup() {
  Serial.begin(9600);

  small.attach(5);
  small.write(0);
  medium.attach(6);
  medium.write(0);
  large.attach(7);
  large.write(0);

  red = 11;
  yellow = 12;
  green = 13;
  
  pinMode(red, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);

}

void loop() {

  if(Serial.available()>0) {
    stage = stage + Serial.read();
  }

  /*if(val == true){
    on(red);
    delay(1000);
    on(yellow);
    delay(1000);
    on(green);
    delay(1000);

    small.write(90);
    delay(500);
    small.write(180);
    delay(500);
    small.write(90);
    delay(500);
    small.write(0);
    delay(500);

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

    Serial.write(1);
    val = false;
  }*/

  if(stage == 1){
    redLight();  
  }
  
}
