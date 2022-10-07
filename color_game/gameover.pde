int bestscore;

void gameover() {
  background(255);
  tactileCircle(700, 700, 100, 255);
  fill(0);
  textSize(50);
  text("Score:" + score, 400, 200);
  if (score > bestscore) {
    bestscore = score;
  }
  text("HighScore:" + bestscore, 400, 350);
  
}

void gameoverClicks() {
  randomWord = (int) random (0, 6);
  randomColor = (int) random (0, 6);
  if (touchingCircle(700, 700, 100)) {
    mode = INTRO;
    score = 0;
  }
}
