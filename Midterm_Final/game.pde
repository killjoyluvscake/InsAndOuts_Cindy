void play_game(){
  d = dist(x, y, mouseX, mouseY);
  
  //impossible catch game
  if(d <= 50){
    x = random(50, width-50);
    y = random(75, height-100);
  }
  
  
}

void clicked(int click){
  if(click >= limit){
    if(currentTime - triggerTime <= 500){
      image(red[4], width/2, height/2);
    }
    else
      gameOver();
  }
  else if(click >= 20 && click < limit){
    random = int(random(4));
    text_red(random);
  }
  else if(click >= 10 && click < 20){
    random = int(random(5));
    text_yellow(random);
  }
  else if(click >= 1 && click < 10){
    random = int(random(5));
    text_green(random);
  }
  
}

void text_green(int random){
  switch(random){
    case 0:
      if(currentTime-triggerTime <= timer2){
        image(green[0], width/2, height/2);
      }
    break;
    
    case 1:
      if(currentTime-triggerTime <= timer2){
        image(green[1], width/2, height/2);
      }
    break;
    
    case 2:
      if(currentTime-triggerTime <= timer2){
        image(green[2], width/2, height/2);
      }
    break;
    
    case 3:
      if(currentTime-triggerTime <= timer2){
        image(green[3], width/2, height/2);
      }
    break;
    
    case 4:
      if(currentTime-triggerTime <= timer2){
        image(green[4], width/2, height/2);
      }
    break;
  }
}

void text_yellow(int random){
  switch(random){
    case 0:
      if(currentTime-triggerTime <= timer2){
        image(yellow[0], width/2, height/2);
      }
    break;
    
    case 1:
      if(currentTime-triggerTime <= timer2){
        image(yellow[1], width/2, height/2);
      }
    break;
    
    case 2:
      if(currentTime-triggerTime <= timer2){
        image(yellow[2], width/2, height/2);
      }
    break;
    
    case 3:
      if(currentTime-triggerTime <= timer2){
        image(yellow[3], width/2, height/2);
      }
    break;
    
    case 4:
      if(currentTime-triggerTime <= timer2){
        image(yellow[4], width/2, height/2);
      }
    break;
  }

}

void text_red(int random){
  switch(random){
    case 0:
      if(currentTime-triggerTime <= timer2){
        image(red[0], width/2, height/2);
      }
    break;
    
    case 1:
      if(currentTime-triggerTime <= timer2){
        image(red[1], width/2, height/2);
      }
    break;
    
    case 2:
      if(currentTime-triggerTime <= timer2){
        image(red[2], width/2, height/2);
      }
    break;
    
    case 3:
      if(currentTime-triggerTime <= timer2){
        image(red[3], width/2, height/2);
      }
    break;
  }

}

void countDown(){
  fill(255);
  countDown = ((startTime + 30000)-currentTime)/1000;
  textSize(25);
  text("Timer: " + countDown, 100, height-50);
  
  if(countDown <= 0){
    scene = 2;
    gameOver();
  }
}
