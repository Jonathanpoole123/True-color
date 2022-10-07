//Jonathan Poole
//blk 1-2

//color variables
color red = #E31B2C;
color green = #2DED11;
color blue = #1133ED;
color purple = #DE11ED;
color yellow = #EDE611;
color orange = #EDA011;
color white = 255;
color black = 0;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup() {
  size(800, 1000);
  textAlign(CENTER, CENTER);
  mode = INTRO;
  strokeWeight(2);
}

void draw() {
  if (mode == INTRO) {
  intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }
  
}
