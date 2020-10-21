void play_game(){
  d = dist(x, y, mouseX, mouseY);
  
  //impossible catch game
  if(d <= 50){
    x = random(50, width-50);
    y = random(50, height-50);
  }
  
  
}

void clicked(int click){
  if(click >= limit){
    gameOver();
  }
  else if(click >= 20 && click < limit){
    red();
  }
  else if(click >= 10 && click < 20){
    yellow();
  }
  else if(click >= 1 && click < 10){
    green();
  }
  
}

void green(){

}

void yellow(){

}

void red(){

}

void countDown(){

}
