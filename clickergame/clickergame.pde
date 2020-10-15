import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//MODE VARIABLES
int  mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

// TARGET VARIABLES --------------------------------
float x, y, d;
float vx, vy; //target velocity 
int score, lives;
int highscore;
PImage orange;
PImage strawberry;
PImage banana;
PImage raspberry;
PImage selectedImage;
float targetsize;

//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover;


//COLOR PALLETTE
color lightteal = #C7EDE8;
color lightmedteal = #A0DED6;
color lightdarkteal = #7ECECA;
color medteal = #45B5C4;
color darkteal = #1693A5;
color pink = #FAA7B6;

// FONT VARIABLES
PFont rainbowuniversefont; 
PFont pixelfont;
PFont pumpkinfont;
PFont pumpkinfontlarge;
PFont pumpkinfontmed;
float sliderX; 

void setup() {
  imageMode(CENTER);
  size(800, 800);
  mode = INTRO;

  //Fonts
  rainbowuniversefont = createFont("Rainbow Universe.ttf", 100);
  textAlign(CENTER, CENTER);
  pixelfont = createFont("pixelmix.ttf", 90);
  textAlign(CENTER, CENTER);
  pumpkinfont = createFont("Pumpkin Soup.ttf", 50);
  textAlign(CENTER, CENTER);
  pumpkinfontlarge = createFont("Pumpkin Soup.ttf", 100 );
  textAlign(CENTER, CENTER);
  pumpkinfontmed = createFont("Pumpkin Soup.ttf", 75);
  textAlign(CENTER, CENTER);
 
  // target intialization
  x = width/2;
  y = height/2;
  d = 300;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  highscore = 0;
  reset();

  //fruit targets
  selectedImage = raspberry;  
  orange = loadImage("orange.png");
  strawberry = loadImage("strawberry.png");
  banana = loadImage("banana.png");
  raspberry = loadImage("raspberry.png");
  selectedImage = raspberry; 
  targetsize = 175;

  //slider
  sliderX = 150;

  // minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
}

void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error:Mode = " + mode);
  }
}
