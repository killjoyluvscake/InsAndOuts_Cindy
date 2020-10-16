//Author: Cindy Mei
//Date: 10.21.2020
//Title: Wake Up NYC_Midterm_Edition

String[] imageList = 
{"sunset_sky.jpg", "sunset_building.png", "starry_sky.jpg", "building1.png", 
"sunset_cloud1.png", "sunset_cloud2.png", "sunset_cloud3.png", "sunset_cloud4.png",
"sunset_cloud5.png", "sunset_cloud6.png", "sunset_cloud7.png"};
PImage[] background = new PImage[12];

int shine = 15;

int currentTime;

int scene = 0;

void setup(){
  size(1080, 720);
  textAlign(CENTER);
  imageMode(CENTER);
  
  for(int i = 0; i <= imageList.length - 1; i++){
    background[i] = loadImage(imageList[i]);
  }
  
  currentTime = millis();
  noStroke();
}

void draw(){
  
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

void shiny_stars(int x, int y){
  fill(245, 247, 126);
  circle(x, y, 5);
  
  fill(255, 255, 242, 100);
  if(shine >= 25 || shine <= 15){
    shine += 5;
  }
  else{
    shine += -5;
  }
  
  circle(x, y, shine);
}

void move_Right(int i, int increment){
  image(background[i], width/2 + increment, height/2);
  
}

void scene1(){
  image(background[0], width/2, height/2);
  
  rounds_of_stars(75, 50);
  
  image(background[1], width/2, height/2);  
    
  delay(250);
}

void scene2(){
  image(background[2], width/2, height/2);
  
  rounds_of_stars(150, 150);
  
  image(background[3], width/2, height/2);

  delay(250);
}

void gameOver(){
  background(0);
  fill(255);
  textSize(100);
  text("Game Over", width/2, height/2);
}
