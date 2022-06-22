void game() {
  fill(#001840, 100);
  rect(width/2, height/2, width, height);
  
  addObjects();
  gameEngine();
  debug();
  
  if (player1.lives >= 4) {
    strokeWeight(1);
    fill(#40CEFF, 80);
    circle(player1.x, player1.y, 80);
  }
  
  if (player1.lives <= 0) {
    mode = GAMEOVER;
  }
}

void addObjects() {
  objects.add(0, new Star());
  if (frameCount % 30 == 0) objects.add(new Enemy1());
  if (frameCount % 300 == 0) objects.add(new Enemy2());
  if (frameCount % 480 == 0) objects.add(new PowerUp1());
  if (frameCount % 480 == 120) objects.add(new PowerUp2());
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();
    if (s.lives <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  } 
}

void debug() {

  fill(#FFFFFF);
  textSize(10);
  text(frameRate, 20, 20);
  text(objects.size(), 20, 40);
  String lives = "Lives " + player1.lives;
  text(lives, 20, 60);
  String Score = "Score " + score;
  text(Score, 20, 80);
  String powerup1 = "Powerup1 " + PUCollected;
  text(powerup1, 20, 100);
  String powerup2 = "Powerup2 " + PUCollected2;
  text(powerup2, 20, 120);
}

void gameClicks() {
  mode = PAUSE;
}
