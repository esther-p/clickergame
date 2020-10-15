void gameover () {
  //music
  theme.pause();
  gameover.play();
  background(pink);
  fill(lightteal);
  rect(250, 500, 300, 100);
  fill(255);
  text("exit", 400, 540);
  // text
  fill(255);
  textSize(100);
  textFont(pumpkinfontlarge); 
  text("GAMEOVER", 400, 150);
  textFont(pumpkinfont); 
  text("highscore:", 350, 300);
  text(highscore, 520, 300);

  // highscore
  if (score > highscore) {
    highscore = score;
  }
}

void gameoverClicks() {
  reset();
  mode = INTRO;
  theme.rewind();
  if (mouseX > 250 && mouseX < 550 && mouseY > 500 && mouseY < 600) {
    exit();
  }
}
