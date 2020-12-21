import processing.serial.*;

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
int begin = 1;

String[] imageList = {"button_1.png","curtains_1.png"};

PImage[] imageSet = new PImage[2];
PImage startButton, curtains;

void setup() {
  //code by A. Berkoy
  size(1080, 720);
  imageMode(CENTER);
  
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  //imorts images
  for(int i = 0; i < imageList.length; i++){
    imageSet[i] = loadImage(imageList[i]);
  }
  
  startButton = imageSet[0];
  curtains = imageSet[1];
}

void draw() {
  background(255);
  
  image(curtains, width/2, height/2);
  image(startButton, width/2, height/2);
  
  if(begin == 1){
    myPort.write(begin);
  }
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

}

mousePressed(){
  if(mouseX > (width/2)-50 && mouseX < (width/2)+50 && mouseY > 650 && mouseY < 700){
   begin =1;
  }
}
