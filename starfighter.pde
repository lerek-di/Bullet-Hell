class Starfighter extends GameObject {
  
  int cooldown, threshold;
  
  Starfighter() {
    super(width/2, height/2, 0, 0, "Bullet_Hell_Player.png", 40, #FF0000, 3);
    PUCollected = 0;
  }
  
  void act() {
    super.act();
    
    if (space && frameCount % 6 == 0) {
      objects.add(new Bullet(x, y, 0, -10));
      int i = 1;
    while (i < PUCollected + 1) {
        objects.add(new Bullet(x, y, -0.2 * i, -10));
        objects.add(new Bullet(x, y, 0.2 * i, -10));
        i++;
      }
    }
    
    if (up)    vy = -8;
    if (down)  vy =  8;
    if (left)  vx = -8;
    if (right) vx =  8;
    if (!up && !down)    vy = vy * 0.9;
    if (!left && !right) vx = vx * 0.9;
    
    if (x < size / 2 && left)          vx = 0;
    if (x > width - size / 2 && right) vx = 0;
    if (y < size / 2 && up)            vy = 0;
    if (y > height - size / 2 && down) vy = 0;
    
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives = 0;
        }
      }
      if (obj instanceof EnemyBullet2) {
        if (collidingWith(obj)) {
          lives = lives - 3;
          obj.lives = 0;
        }
      }
      if (obj instanceof Enemy) {
        if (collidingWith(obj)) {
          lives = lives - 10;
          obj.lives = 0;
        }
      }
            if (obj instanceof Enemy2) {
        if (collidingWith(obj)) {
          lives = lives - 1;
          obj.lives = 0;
        }
      }
      if (obj instanceof PowerUp1) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          PUCollected = PUCollected + 1;
        }
      }
      if (obj instanceof PowerUp2) {
        if (collidingWith(obj)) {
          obj.lives = 0;
          PUCollected2 = PUCollected2 + 1;
          lives = lives + 3;
        }
      }
      i++;
    }
  }
  
  void show() {
    super.show();
    
    if (x <= 20)  left = false;
    if (x >= 780) right = false;
    if (y <= 20)  up = false;
    if (y >= 780) down = false;
  }
}
