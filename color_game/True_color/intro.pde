PImage[] gif;
int nofgif;
int f;
int text2 = 50;
boolean increase = true;

void intro() {
  //text font
  textFont(Gzombie);
  //text
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f== nofgif) f = 0;
  //text loop
  textSize(text2);

  //text animation
  fill(white);
  textAnimation();
  text("TRUE", width/2, 300);
  text("COLOR", width/2, 400);
  tactileCircle(700, 700, 100, 255);

  //play button
  fill(black);
  textSize(50);
  text("PLAY", 700, 695);
  //song
  song.play();
}

void introClicks() {
  if (touchingCircle(700, 700, 100)) {
    mode = GAME;
    song.rewind();
    song.pause();
  }
}

void textAnimation() {
  if (increase) {
    text2 = text2 + 1;
  } else {
    text2 = text2 - 1;
  }
  if (text2 == 175) {
    increase = false;
  }
  if (text2 == 49) {
    increase = true;
  }
}
