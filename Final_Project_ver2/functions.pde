void loading(){
  if(overButton((width/2)-150, (height/2), 300, 200) == true){
    image(button[1], width/2, (height/2)+100);
  }
  else{
    image(button[0], width/2, (height/2)+100);
  }
}

//from processing examples
boolean overButton(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void redText(int random){
  image(red[random], random(300, width-300), random(175, height-175));
}

void yellowText(int random){
  image(yellow[random], random(300, width-300), random(175, height-175));
}

void greenText(int random){
  image(green[random], random(300, width-300), random(175, height-175));
}

void gear1(){
  image(starting[0], random(300, width-300), random(175, height-175));
}

void gear2(){
  image(starting[1], random(300, width-300), random(175, height-175));
}

void gear3(){
  image(starting[2], width/2, height/2);
}

void showtime(){
  image(showtime, width/2, height/2);
}

void reset(){
  stage = -1;
}
