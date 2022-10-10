int bestscore;


void gameover() {
  image(gameoverImg, 0, 0);
  
  tactileCircle(700, 700, 100, 255);

  //text font
  textFont(Gzombie);
  //gameover text
  fill(white);
  textSize(text2);
  textAnimation();
  text("Game Over", width/2, 150);

  //score keeping
  fill(white);
  textSize(50);
  text("Score:" + score, 400, 400);
  if (score > bestscore) {
    bestscore = score;
  }
  textSize(50);
  text("HighScore:" + bestscore, 400, 475);

  //play again text
  fill(black);
  textSize(20);
  text("PLAY AGAIN", 700, 700);
}

void gameoverClicks() {
  randomWord = (int) random (0, 6);
  randomColor = (int) random (0, 6);
  if (touchingCircle(700, 700, 100)) {
    mode = INTRO;
    score = 0;
    texts = 0;
    text2 = 50;
  }
}
