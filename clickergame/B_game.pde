void game () {
  background(lightteal);

  // Score and text
  textFont(pumpkinfont);
  text("Score: " + score, 200, 700);
  text("Lives: " + lives, 600, 700);

  // display target
  fill(255);
  stroke(lightdarkteal);
  strokeWeight(5);
  circle(x, y, targetsize);
  image(selectedImage, x, y, targetsize-30, targetsize-30);

  //moving
  x = x + vx;
  y = y + vy;


  // bouncing
  if (x < targetsize/2 || x > width- targetsize/2) {
    vx  = vx * -1;
  }

  if (y < targetsize/2 || y > height-targetsize/2) {
    vy = vy * -1;
  }


  //pause button
  square(25, 25, 75);
  rect(50, 40, 3, 45);
  rect(70, 40, 3, 45);
}


void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < targetsize/2) {
    score = score + 1;
    coin.rewind();
    coin.play();
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (mouseX > 25 && mouseX < 100 && mouseY > 25 && mouseY < 100) {
    mode = PAUSE;
    fill(255);
    square(25, 25, 75);
    fill(lightdarkteal);
    triangle(52, 45, 77, 62.5, 52, 80);
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    background(pink);
    if (lives == 0) mode = GAMEOVER;
  }
}
