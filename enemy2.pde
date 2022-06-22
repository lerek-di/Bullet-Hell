class Enemy2 extends Enemy {
  
  Enemy2() {
    super("Bullet_Hell_Enemy2.png", #FF03B8, 5, 120);
  }
  
  void act() {
    super.act();
    
    if (frameCount % 90 == 0) {
      objects.add(new EnemyBullet2(x, y, -1, 6));
      objects.add(new EnemyBullet2(x, y, 1, 6));
      objects.add(new EnemyBullet2(x, y, 0, -6));
      objects.add(new EnemyBullet2(x, y, -2, 4));
      objects.add(new EnemyBullet2(x, y, 2, 4));
      objects.add(new EnemyBullet2(x, y, -2, -4));
      objects.add(new EnemyBullet2(x, y, 2, -4));
      objects.add(new EnemyBullet2(x, y, -4, -2));
      objects.add(new EnemyBullet2(x, y, 4, -2));
    }
    
    if (y >= 200 && vx == 0) {
      vx = random(-5, 5);
    }
    if (x <= 0 || x >= width) vx = vx * -1;
    if (y >= 200) vy = 0;
    
    if (offScreen()) lives = 0;
  }
}
