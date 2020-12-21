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
  if (Serial.available() > 0) {
    stage += Serial.read();
  }

  if(stage == 7){
    reset();
  }
  else if(stage == 6){
    gear3();
  }
  else if(stage == 5){
    gear2();
  }
  else if(stage == 4){
    gear1();
  }
  else if(stage == 3){
    greenLight();
  }
  else if(stage == 2){
    yellowLight();
  }
  else if(stage == 1){
    redLight();
  }

}
