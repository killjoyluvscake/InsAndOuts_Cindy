//Author: Cindy Mei
//Date: 10.21.2020
//Title: Wake Up NYC_Midterm_Edition

String[] imageList = 
{"sunset_sky.jpg", "starry_sky.jpg", "building1.png", "fairy.png",
"text1.png", "text2.png", "text3.png", "text4.png", "text5.png", 
"text6.png", "text7.png", "text8.png", "text9.png", "text10.png", 
"text11.png", "text12.png", "text13.png", "text14.png", "text15.png"};
PImage[] background = new PImage[19];

PImage[] green = new PImage[5];
PImage[] yellow = new PImage[5];
PImage[] red = new PImage[5];
PImage faerie;

int currentTime = 0;
int savedTime = 0;
int startTime;
int timer = 350;

int click = 0;
int limit = 25;
int random;

float x, y, d;

int scene = 0;

void setup(){
  size(1080, 720);
  textAlign(CENTER);
  imageMode(CENTER);
  
  for(int i = 0; i <= imageList.length - 1; i++){
    background[i] = loadImage(imageList[i]);
  }
  
  for(int i = 0; i <= green.length - 1; i++){
    green[i] = background[4 + i];
  }
  
  for(int i = 0; i <= yellow.length - 1; i++){
    yellow[i] = background[9 + i];
  }
  
  for(int i = 0; i <= red.length - 1; i++){
    red[i] = background[14 + i];
  }
  
  faerie = background[3];
  
  x = width/2;
  y = height/2;
  
  noStroke();
}

void draw(){
  
  currentTime = millis();
  
  if(scene == 0){
    scene1();
  }
  else if(scene == 1){
    scene2();
    play_game();
  }
  else if(scene == 2){
    gameOver();
  }
  else{
    scene = 0;
  }
  
}

void mousePressed(){
  if(scene == 1){
  click++;
  }
  clicked(click);
}

void keyPressed(){
  if(scene == 0 && (key == ENTER || key == RETURN)){
    scene = 1;
  }
}
