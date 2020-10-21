//draws stars in random coords
void rounds_of_stars(int amount, int height_amt){
  fill(245, 247, 126);
  for(int i = 0; i <= amount; i++){
  circle(random(width), random(height_amt), 3);
  }
}

//opening scenery with sunset background
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

//game scenery with starry sky background
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
  text("(click to catch the faerie before time runs out)", width/2, height - 50);
  
  image(faerie, x, y);
}

//game over screen
void gameOver(){
  background(0);
  
  scene = 2;
  click = 0;
  
  fill(255);
  textSize(100);
  text("Game Over", width/2, height/2);
  textSize(50);
  text("(click to restart)", width/2, height/2 + 200);
}
