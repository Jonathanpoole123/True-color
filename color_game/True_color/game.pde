int fiftyChance = (int) random(0, 2);
float texts = 0;
int randomWord  = (int) random(0, 6);
int randomColor = (int) random(0, 6);

String[] words = {"RED", "GREEN", "BLUE", "PURPLE", "YELLOW", "ORANGE"};
color[] colors = {red, green, blue, purple, yellow, orange};

void game() {
  //matching
  if (fiftyChance == 1) {
    randomWord = randomColor;
  }

  while (fiftyChance == 0 && randomWord == randomColor) {
    randomWord = (int) random (0, 6);
    randomColor = (int) random (0, 6);
  }

  //background
  tactileRectTrue(0, 0, width/2 - 3, height, black);
  tactileRectFalse(400, 0, width/2 + 3, height, white);

  //text font
  textFont(Gzombie);
  //score
  textSize(50);
  fill(black);
  text("Score:" + score, 600, 100);

  //true text
  textSize(125);
  fill(white);
  text("True", 200, 200);

  //false text
  textSize(125);
  fill(black);
  text("False", 600, 200);

  //time limit
  textSize(0);
  textSize(texts);
  texts = texts + 1;
  if (texts > 225) {
    mode = GAMEOVER;
    wrong.play();
    wrong.rewind();
  } else {
    textSize(texts);
  }
  //random puzzle
  fill(colors[randomColor]);
  text(words[randomWord], width/2, 400);
}

void gameClicks() {
  randoms();
  texts = 0;

  if (touchingRect(400, 0, width/2, height)) {
    if (randomColor != randomWord) {
      score = score + 1;
      texts = 0;
      correct.play();
      correct.rewind();
    }
    if (randomColor == randomWord) {
      mode = GAMEOVER;
      wrong.play();
      wrong.rewind();
    } else {
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
    }
  }
  if (touchingRect(0, 0, width/2, height)) {
    if (randomColor == randomWord) {
      score = score + 1;
      texts = 0;
      correct.play();
      correct.rewind();
    }
    if (randomColor != randomWord) {
      mode = GAMEOVER;
      wrong.play();
      wrong.rewind();
    } else {
      randomWord = (int) random (0, 6);
      randomColor = (int) random (0, 6);
    }
  }
}

void randoms() {
  fiftyChance = (int) random(0, 2);
}
