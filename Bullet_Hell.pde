color dark   = #000000;
color orange = #F23A08;
color blue   = #4DFFFB;
color yellow = #FFCD72;
color brown  = #813714;

final int LOADING  = 0;
final int INTRO    = 1;
final int GAME     = 2;
final int GAMEOVER = 3;
final int PAUSE    = 4;
int mode;

boolean up, down, left, right, space;

ArrayList<GameObject> objects;
Starfighter player1;

int score;

int PUCollected, PUCollected2;

PImage img;

void setup() {
  size(500, 700);
  mode = INTRO;
  rectMode(CENTER);
  textAlign(CENTER);
  
  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();
  objects.add(player1);
  
  img = loadImage("cover.png");
  
  score = 0;
  PUCollected = 0;
  PUCollected2 = 0;
}

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == GAMEOVER) gameover();
  else if (mode == PAUSE)    pause();
}
