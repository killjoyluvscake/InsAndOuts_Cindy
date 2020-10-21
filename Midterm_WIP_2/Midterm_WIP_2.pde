//Author: Cindy Mei
//Date: 10.21.2020
//Title: Wake Up NYC_Midterm_Edition

String[] imageList = {"sunset_sky.jpg", "starry_sky.jpg", "building1.png"};
PImage[] background = new PImage[3];

int currentTime = 0;
int savedTime = 0;
int timer = 250;

int scene = 0;

void setup(){
  size(1080, 720);
  textAlign(CENTER);
  imageMode(CENTER);
  
  for(int i = 0; i <= imageList.length - 1; i++){
    background[i] = loadImage(imageList[i]);
  }
  
  noStroke();
}

void draw(){
  
  currentTime = millis();
  
  if(scene == 0){
    scene1();
  }
  else if(scene == 1){
    scene2();
  }
  else if(scene == 2){
    gameOver();
  }
  else{
    scene = 0;
  }
  
}

void mousePressed(){
  scene++;
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
  if(currentTime - savedTime > timer){
    image(background[0], width/2, height/2);
    rounds_of_stars(75, 50);
    savedTime = currentTime;
  }
}

//sets up scene 2
void scene2(){
  if(currentTime - savedTime > timer){
    image(background[1], width/2, height/2);
    rounds_of_stars(150, 150);
    savedTime = currentTime;
  }
  
  image(background[2], width/2, height/2);
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
