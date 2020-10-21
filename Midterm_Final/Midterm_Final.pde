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
int timer = 250;

int click;
int limit = 25;
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
  click++;
}

void keyPressed(){
  if(scene == 0 && (key == ENTER || key == RETURN)){
    scene = 1;
  }
}

//draws stars in random coords
void rounds_of_stars(int amount, int height_amt){
  fill(245, 247, 126);
  for(int i = 0; i <= amount; i++){
  circle(random(width), random(height_amt), 3);
  }
}

//sets up scene one
void scene1(){
  //background
  if(currentTime - savedTime > timer){
    image(background[0], width/2, height/2);
    rounds_of_stars(75, 50);
    savedTime = currentTime;
  }
  
  //text -- title + description
  fill(255);
  textSize(50);
  text("CATCH THE FAERIE", width/2, height/2);
  textSize(20);
  text("(press enter to start)", width/2, height/2+50);
}

//sets up scene 2
void scene2(){
  //background
  if(currentTime - savedTime > timer){
    image(background[1], width/2, height/2);
    rounds_of_stars(150, 150);
    savedTime = currentTime;
  }
  
  image(background[2], width/2, height/2);
  
  fill(255);
  textSize(25);
  text("click the faerie", width/2, height - 50);
  
  image(faerie, x, y);
}

//game over screen
void gameOver(){
  background(0);
  fill(255);
  textSize(100);
  text("Game Over", width/2, height/2);
  textSize(50);
  text("(click to restart)", width/2, height/2 + 200);
}

void play_game(){
  d = dist(x, y, mouseX, mouseY);
  
  //impossible catch game
  if(d <= 50){
    x = random(50, width-50);
    y = random(50, height-50);
  }
  
  
}

void clciked(click){
  if(click >= limit){
    gameOver();
  }
  else if(click <= 20){
  
  }
  else if(click <= 10){
  
  }
  
}

void green(){

}

void yellow(){

}

void red(){

}
