void intro() {
  gameover.pause();
  gameover.rewind();
  theme.play();

  background(lightteal);

  //start button
  stroke(medteal);
  strokeWeight(120);
  line(200, 600, 600, 600);
  startbutton(140, 540, 520, 120);
  strokeWeight(100);
  stroke(lightdarkteal);
  line(200, 600, 600, 600);
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(100);
  textFont(pumpkinfont); 
  text("Start", 400, 590);

  // game title
  textAlign(CENTER, CENTER);
  fill(255);
  textSize(100);
  textFont(pumpkinfontmed); 
  text("FRUITCLICKER", 400, 300);


  // options button
  tactilecircle(750, 50, 35);
  fill(medteal);
  circle(750, 50, 60);
  fill(255);
  noStroke();
  circle(750, 35, 10);
  circle(750, 50, 10);
  circle(750, 65, 10);
}


void introClicks() {
  if (mouseX > 150 && mouseX < 650 && mouseY > 540 && mouseY < 660)
    mode = GAME;
  if (dist(750, 50, mouseX, mouseY) < 30)
    mode = OPTIONS;
}
