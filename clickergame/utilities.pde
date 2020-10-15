// making rectangle buttons tactile
void recttactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(medteal);
    strokeWeight(5);
  } else {
    strokeWeight(3);
    stroke(lightmedteal);
  }
}

//start button
void startbutton(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(120);
    stroke(darkteal);
    line(200, 600, 600, 600);
  } else {
    stroke(medteal);
    line(200, 600, 600, 600);
  }
}


// ok/back button
void okbutton(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    strokeWeight(120);
    stroke(darkteal);
    line(180, 650, 250, 650);
  } else {
    stroke(medteal);
    line(180, 650, 250, 650);
  }
}

//making circle button tactile
void tactilecircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(darkteal);
    strokeWeight(5);
  } else {
    noStroke();
  }
}

//reset function
void reset() {
  //target
  x = width/2;
  y = height/2;
  d = 300;
  vx = random(-5, 5);
  vy = random(-5, 5);

  //game intialization
  score = 0;
  lives = 3;
  sliderX = 150;
}
