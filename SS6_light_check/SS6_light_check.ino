int blue = 9;
int yellow = 10;
int red = 11;
int green = 12;
int white = 13;

int button = 2;

int pressed = 0;

//int currentTime;
//int savedTime;

void setup() {
  Serial.begin(9600);
  
  pinMode(blue, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(white, OUTPUT);

  pinMode(button, INPUT_PULLUP);
  
  attachInterrupt(digitalPinToInterrupt(button), buttonPress, CHANGE);
}

void loop() {

  if(pressed == 1){
    test();
  }
  else if (pressed == 2){
    song();  
  }
  else{
    pressed = 0;
  }

  Serial.println(pressed);

}
