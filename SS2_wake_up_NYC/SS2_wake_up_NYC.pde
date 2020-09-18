//Author: Cindy Mei
//Date: 9.9.2020
//Title: Wake Up NYC
//Mouse click to cycle through messages

float clicked;

void setup(){
  size(1080, 720);
}

void draw(){
  background(55, 27, 100);
  
  fill(245, 247, 126);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  circle(random(1080), random(200), 5);
  
  //scene building
  noStroke();
  fill(50);
  rect(150, 400, 100, 320);
  rect(800, 300, 75, 420);
  fill(75);
  rect(75, 275, 80, 445);
  rect(200, 600, 75, 120);
  rect(450, 550, 75, 170);
  rect(750, 600, 100, 120);
  fill(100);
  rect(125, 500, 75, 220);
  rect(225, 650, 75, 70);
  rect(325, 550, 75, 170);
  rect(425, 600, 50, 120);
  rect(500, 650, 50, 70);
  rect(650, 575, 75, 145);
  fill(127);
  rect(0, 425, 125, 295);
  rect(850, 400, 150, 320);
  fill(200);
  rect(900, 100, 180, 620);
  //end scene building
  
  
  
  
  delay(500);
}

void mouseClicked(){
  clicked = random(10)%3;
  
  textAlign(CENTER);
  
  if(clicked == 0){
    fill(37, 204, 55);
    textSize(24);
    text("Go to bed...", width/2, height/2);
  }
  else if(clicked == 1){
    fill(237, 224, 45);
    textSize(36);
    text("I'm warning you..!!", width/2, height/2);
  }
  else{
    fill(212, 0, 0);
    textSize(72);
    text("I warned you!!", width/2, height/2);
    delay(500);
    textSize(100);
    text("BANG!!", width/2, height/2+150);
  }
  
}
