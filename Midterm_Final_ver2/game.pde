//impossible catch game
void play_game(){
  clicker = true;
  
  d = dist(x, y, mouseX, mouseY);
  
  if(d <= 50){
    x = random(50, width-50);
    y = random(75, height-100);
  }
}

//defines what happens after you click; separated into three levels + final mode
void clicked(int click){
  if(click >= 20 && click < limit){
    text_red(random);
  }
  else if(click >= 10 && click < 20){
    text_yellow(random);
  }
  else if(click >= 1 && click < 10){
    text_green(random);
  }
}

//takes random number 0-4
void text_green(int random){
  switch(random){
    case 0:
      image(green[0], width/2, height/2);
    break;
    
    case 1:
      image(green[1], width/2, height/2);
    break;
    
    case 2:
      image(green[2], width/2, height/2);
    break;
    
    case 3:
      image(green[3], width/2, height/2);
    break;
    
    case 4:
      image(green[4], width/2, height/2);
    break;
  }
}

//takes random number 0-4
void text_yellow(int random){
  switch(random){
    case 0:
      image(yellow[0], width/2, height/2);
    break;
    
    case 1:
      image(yellow[1], width/2, height/2);
    break;
    
    case 2:
      image(yellow[2], width/2, height/2);
    break;
    
    case 3:
      image(yellow[3], width/2, height/2);
    break;
    
    case 4:
      image(yellow[4], width/2, height/2);
    break;
  }
}

//takes random number 0-3
void text_red(int random){
  switch(random){
    case 0:
      image(red[0], width/2, height/2);
    break;
    
    case 1:
      image(red[1], width/2, height/2);
    break;
    
    case 2:
      image(red[2], width/2, height/2);
    break;
    
    case 3:
      image(red[3], width/2, height/2);
    break;
  }
}

//30s timer on bottom of screne
void countDown(){
  fill(255);
  countDown = ((startTime + 30000)-currentTime)/1000;
  textSize(25);
  text("Timer: " + countDown, 100, height-50);
  
  if(countDown <= 0){
    gameOver();
  }
}
