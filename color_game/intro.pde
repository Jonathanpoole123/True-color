


void intro() {
  background(0);
  tactileCircle(700, 700, 100, 255);
}

void introClicks() {
  if (touchingCircle(700, 700, 100)) {
    mode = GAME;
  }
}
