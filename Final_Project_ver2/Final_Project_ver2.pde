import processing.serial.*;

Serial myPort; // creates object from Serial class
int stage = -1;
int begin = 1ave;
int random = 0;
int x = 0;

String[] imageList = 
{"button_1.png", "button_2.png", "curtains_1.png", "curtains_2.png",
"autumn.png", "spring.png", "summer.png", "winter.png",
"text_1.png", "text_2.png", "text_3.png", "text_4.png", 
"text_5.png", "text_6.png", "text_7.png", "text_8.png", 
"text_9.png", "text_10.png", "text_11.png", "text_12.png", 
"text_13.png", "text_14.png", "text_15.png", "its_show_time.png"};

PImage[] theatre = new PImage[24];
PImage[] button = new PImage[2];
PImage[] curtains = new PImage[2];
PImage[] red = new PImage[4];
PImage[] yellow = new PImage[4];
PImage[] green = new PImage[4];
PImage[] seasons = new PImage[4];
PImage[] starting = new PImage[3];
PImage showtime;

void setup() {
  size(1080, 720);
  imageMode(CENTER);
  
  //code by A. Berkoy
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  //imports images
  for(int i = 0; i < imageList.length; i++){
    theatre[i] = loadImage(imageList[i]);
  }
  
  //sorts images into meaningful arrays
  for(int i = 0; i < button.length; i++){
    button[i] = theatre[i];
  }
  
  for(int i = 0; i < curtains.length; i++){
    curtains[i] = theatre[2+i];
  }
  
  for(int i = 0; i < seasons.length; i++){
    seasons[i] = theatre[4+i];
  }
  
  for(int i = 0; i < red.length; i++){
    red[i] = theatre[8+i];
  }
  
  for(int i = 0; i < yellow.length; i++){
    yellow[i] = theatre[12+i];
  }
  
  for(int i = 0; i < green.length; i++){
    green[i] = theatre[16+i];
  }
  
  for(int i = 0; i < starting.length; i++){
    starting[i] = theatre[20+i];
  }
  
  showtime = theatre[23];
  
  image(seasons[int(random(4))], width/2, height/2);
  
}

void draw() {
  background(255);
  
  /*
  if(begin == 1 && val == 0){
    myPort.write(begin);
  }
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }

  if(val == 1){
    begin = 0;
  }

  if(val == 1 && val < height){
    x+=2;   
  }*/
  
  //------------------------------------------------------
  if ( myPort.available() > 0) {
    stage += myPort.read();
    random = int(random(4));
  }
  
  image(curtains[1], width/2, (height/2)-x);
  image(curtains[0], width/2, height/2);
  
  if(stage == 8){
    reset();
  }
  else if(stage == 7){
    showtime();
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
    greenText(random);
  }
  else if(stage == 2){
    yellowText(random);
  }
  else if(stage == 1){
    redText(random);
  }
  else if(stage == -1){
    loading();
  }
}

void mousePressed(){
  if(stage == -1 && (overButton((width/2)-150, (height/2), 300, 200) == true)){
    myPort.write(begin);
    stage = 0;
  }
}
