//Author: Cindy Mei
//Date: 10.21.2020
//Title: Wake Up NYC_Midterm_Edition

//lists all images
String[] imageList = 
{"sunset_sky.jpg", "starry_sky.jpg", "building1.png", "fairy.png",
"text1.png", "text2.png", "text3.png", "text4.png", "text5.png", 
"text6.png", "text7.png", "text8.png", "text9.png", "text10.png", 
"text11.png", "text12.png", "text13.png", "text14.png", "text15.png"}; 
PImage[] background = new PImage[19];

//image arrays split into different color groups
PImage[] green = new PImage[5];
PImage[] yellow = new PImage[5];
PImage[] red = new PImage[5];
PImage faerie;

//time variables
int currentTime = 0;
int savedTime = 0;
int startTime;
int timer = 350;
int countDown;
int triggerTime;
int timer2 = 2500;

//text bubble variables
int click = 0;
int limit = 25;
int random;

//clicking trigger
boolean clicker;

//faerie coords
float x, y, d;

//scene
int scene = 0;

void setup(){
  size(1080, 720);
  textAlign(CENTER);
  imageMode(CENTER);
  
  for(int i = 0; i < imageList.length; i++){
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
    scene1(); //stage 1
  }
  else if(scene == 1){
    scene2(); //stage 2
    countDown(); //on screen timer set to 30s
    play_game(); //impossible game of catch the faerie
    if(currentTime-triggerTime < timer2){
      clicked(click); //calls up random text bubbles
    }
  }
  else if(scene == 2){
    gameOver(); //calls game over screen
  }
  else{
    scene = 0; //catch/default
  }
}

//while in scene 1 adds to click and sets timer; in scene 2 restarts the game
void mousePressed(){
  if(scene == 1 && clicker == true){
  click++;
    
    //sets start time
    if(click <= limit){
      triggerTime = currentTime;
    }
    
    //randomises text bubbles
    if(click <= 20){
      random = int(random(5));
    }
    else if(click > 20 && click < limit){
      random = int(random(4));
    }
    else if(click == limit){
      clicker = false;
    }
    else
      gameOver();
  }
  else if(scene == 2){
    scene = 0;
  }
}

//starts counter timer and starts the game
void keyPressed(){
  if(scene == 0 && (key == ENTER || key == RETURN)){
    startTime = currentTime;
    scene = 1;
  }
}
