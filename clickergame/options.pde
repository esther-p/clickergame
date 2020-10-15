void options() {
  background(lightdarkteal);
  noStroke();

  rect(50, 50, 700, 700, 20);
  fill(lightmedteal);
  textSize(10);
  textFont(pumpkinfont); 
  text("options", 400, 120);
  fill(255);

  // target selection
  strokeWeight(2);
  stroke(lightmedteal);
  recttactile(115, 250, 120, 120);
  square(115, 250, 120);
  recttactile(265, 250, 120, 120);
  square(265, 250, 120);
  recttactile(415, 250, 120, 120);
  square(415, 250, 120);
  recttactile(565, 250, 120, 120);
  square(565, 250, 120);
  image(orange, 175, 310, 100, 100);
  image(strawberry, 325, 310, 95, 110);
  image(banana, 480, 310, 95, 110);
  image(raspberry, 625, 308, 100, 105);

  // slider 
  recttactile(125, 480, 300, 35);
  line(150, 500, 400, 500);
  circle(sliderX, 500, 20);
  targetsize = (map(sliderX, 150, 500, 175, 220));

  // indicator for target image and size
  stroke(lightmedteal);
  strokeWeight(5);
  circle(550, 500, targetsize);
  image(selectedImage, 550, 500, targetsize-30, targetsize-30);
  
  //"Back button"
  strokeWeight(120);
  stroke(lightdarkteal);
  line(180, 650, 250, 650);
  okbutton(120, 590, 200, 125);
  strokeWeight(100);
  stroke(lightteal);
  line(180, 650, 250, 650);
  textSize(100);
  textFont(pumpkinfont); 
  text("BACK", 215, 650);
}




void controlSlider() {
  if (mouseX > 150 && mouseX < 400  && mouseY > 490 && mouseY < 510) {
    sliderX = mouseX;
  }
}

void optionsClicks() {
  //image selection
  if (mouseX > 115 && mouseX < 235 && mouseY > 250 && mouseY < 370) {
    selectedImage = orange;
  }
  if (mouseX > 265 && mouseX < 385 && mouseY > 250 && mouseY < 370) {
    selectedImage = strawberry;
  }
  if (mouseX > 415 && mouseX < 535 && mouseY > 250 && mouseY < 370) {
    selectedImage = banana;
  }
  if (mouseX > 565 && mouseX < 685 && mouseY > 250 && mouseY < 370) {
    selectedImage = raspberry;
  }
 
  if (mouseX > 120 && mouseX < 310 && mouseY > 590 && mouseY < 700) {
    mode = INTRO;
  }
}
