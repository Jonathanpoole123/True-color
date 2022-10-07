int score;

void mousePressed() {
  //gameover to start button
  if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == INTRO) {
    introClicks();
  }
}

void keyPressed() {
    texts = 0;

  if (keyCode == RIGHT && mode == GAME) {
    if (randomColor != randomWord) {
      score = score + 1;
      texts = 0;
    }
    if (randomColor == randomWord) {
      mode = GAMEOVER;
    } else {
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
    }
  }
  if (keyCode == LEFT && mode == GAME) {
    if (randomColor == randomWord) {
      score = score + 1;
      texts = 0;
    }
    if (randomColor != randomWord) {
      mode = GAMEOVER;
    } else {
      randomWord = (int) random (0, 6);
      randomColor = (int) random (0, 6);
    }
  }
}



void tactileCircle(int x, int y, int r, color f) {
  fill(f);
  if (touchingCircle(x, y, r)) {
    stroke (255);
  } else {
    stroke(0);
  }
  circle(x, y, r);
}


boolean touchingCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r/2) {
    return true;
  } else {
    return false;
  }
}


boolean touchingRect(int x, int y, int w, int h) {
  if (mouseX < x+w && mouseX > x && mouseY < y+h && mouseY >y) {
    return true;
  } else {
    return false;
  }
}
