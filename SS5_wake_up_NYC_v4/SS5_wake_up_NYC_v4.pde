//Author: Cindy Mei
//Date: 9.30.2020
//Title: Wake Up NYC
//Mouse click to cycle through messages

int clicked = 0;
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
  image(bg_sky, width/2, height/2); //uses iimage for background

  //makes stars  
  fill(245, 247, 126);
  rounds_of_stars();
  
  shiny_stars(125, 25);
  shiny_stars(575, 150);
  shiny_stars(990, 55);
  
  //foreground building --> png
  image(building, width/2, height/2); 
  
  //lights; setup for rollover effect
  fill(100);
  rollOverEffect();
  
  //click for activity
  click(clicked);
  
  delay(500);
}

void mousePressed(){
    clicked = int(random(0, 10));
}

void rounds_of_stars(){
  for(int i = 0; i <= 100; i++){
    circle(random(1080), random(200), 5);
  }
}

void shiny_stars(int x, int y){
  
  //star cores --> constantly in place
  fill(245, 247, 126);
  circle(x, y, 5);
  
  //shining star light
  if(shine >= 25 || shine <= 15){
    shine += 5;
  }
  else{
    shine += -5;
  }
  fill(255, 255, 242, 100);
  circle(x, y, shine);
}

void rollOverEffect(){
  int a = 0;
  
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
}

void click(int clicked){
  switch (clicked){
    case 0:
      fill(37, 204, 55);
      textSize(24);
      text("...", width/2, height/2);
    break;
    
    case 1:
      fill(37, 204, 55);
      textSize(24);
      text("go to bed...", width/2, height/2);
    break;
    
    case 2:
      fill(37, 204, 55);
      textSize(24);
      text("ZZZZzzzzz....", width/2, height/2);
    break;
    
    case 3:
      fill(237, 224, 45);
      textSize(36);
      text("I'm warning you..!!", width/2, height/2);
    
    break;
    
    case 4:
      fill(237, 224, 45);
      textSize(36);
      text("Are you kidding me?!?!", width/2, height/2);
    
    break;
    
    case 5:
      fill(237, 224, 45);
      textSize(36);
      text("Come on!!", width/2, height/2);
    
    break;
    
    case 6:
      fill(212, 0, 0);
      textSize(72);
      text("I warned you!!", width/2, height/2);
    break;
    
    case 7:
      fill(212, 0, 0);
      textSize(72);
      text("SHUT UP!!", width/2, height/2);
    break;
    
    case 8:
      fill(212, 0, 0);
      textSize(72);
      text("TURN OFF THAT SOUND!!", width/2, height/2);
    break;
    
    case 9:
      text("place holder", width/2, height/2);
    break;
    
    default:
      fill(255);
      textSize(24);
      text("*cricket noises*", width/2, height/2);
    break;
  }
}
