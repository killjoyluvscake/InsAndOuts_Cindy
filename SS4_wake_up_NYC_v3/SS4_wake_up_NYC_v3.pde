//Author: Cindy Mei
//Date: 9.23.2020
//Title: Wake Up NYC
//Mouse click to cycle through messages

float clicked = 0;
int shine = 15;

PImage bg_sky;
PImage building;

void setup(){
  size(1080, 720);
  textAlign(CENTER);
  imageMode(CENTER);
  
  bg_sky = loadImage("starry_sky.jpg");
  building = loadImage("building1.png");
}

void draw(){
  //scene building
   noStroke();
  image(bg_sky, width/2, height/2);

  //makes stars  
  fill(255, 255, 242, 100);
  
  //shining star light
  if(shine >= 25 || shine <= 15){
    shine += 5;
  }
  else{
    shine += -5;
  }
  
  circle(125, 25, shine);
  circle(575, 150, shine);
  circle(990, 55, shine);
  
  //rounds of stars
  fill(245, 247, 126);
  for(int i = 0; i <= 100; i++){
    circle(random(1080), random(200), 5);
  }
  
  //star cores --> previous star itteration
  circle(125, 25, 5);
  circle(575, 150, 5);
  circle(990, 55, 5);
  
  image(building, width/2, height/2); //foreground building
  
  //lights; setup for rollover effect
  int a = 0;
  fill(100);
  
  for(int i = 0; i <= 5; i++){
      
    if(mouseX >= 925 && mouseX <= 1050){
      if(mouseY >= 125+a && mouseY <= 200+a){
        fill(255, 252, 94);
      }
    }
    else{
      fill(230, 229, 213);
    }
    
    rect(925, 125+a, 125, 75);
     
    a += 100;
  }
  
  //click for text activity
  if(clicked == 1){
    fill(37, 204, 55);
    textSize(24);
    text("Go to bed...", width/2, height/2);
  }
  else if(clicked == 2){
    fill(237, 224, 45);
    textSize(36);
    text("I'm warning you..!!", width/2, height/2);
  }
  else if(clicked == 3){
    fill(212, 0, 0);
    textSize(72);
    text("I warned you!!", width/2, height/2);
    delay(250);
    clicked++;
  }
  else if (clicked == 4){
    fill(212, 0, 0);
    textSize(100);
    text("BANG!!", width/2, height/2+150);
    clicked = 0;
  }
  
  delay(500);
}

void mousePressed(){
    clicked++;
}
