//Jonathan Poole
//blk 1-2

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer correct;
AudioPlayer wrong;
AudioPlayer song;
AudioPlayer Stop;
//text varialbe
PFont Gzombie;

//image variaibles
PImage gameoverImg;

//color variables
color red = #E31B2C;
color green = #2DED11;
color blue = #1133ED;
color purple = #DE11ED;
color yellow = #EDE611;
color orange = #CB6906;
color white = 255;
color black = 0;

//mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

void setup() {
  size(800, 800);

  //gameover image
  gameoverImg = loadImage("ezgif-1-15fc587219.jpg");

  //gif
  nofgif = 29 ;
  gif = new PImage[nofgif];

  int i = 0;
  while ( i < nofgif) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");

    i++;
  }
  //song stuff
  minim = new Minim(this);
  song = minim.loadFile("intro.mp3");
  minim = new Minim(this);
  correct = minim.loadFile("SUCCESS.wav");
  minim = new Minim(this);
  wrong = minim.loadFile("FAILURE.wav");

  //font
  Gzombie = createFont("Good Zombie.ttf", 200);
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
