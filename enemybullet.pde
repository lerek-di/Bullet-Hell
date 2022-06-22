class EnemyBullet extends GameObject {
  
  EnemyBullet(float x, float y, float vx, float vy) {
    super(x, y, vx, vy, "Bullet_Hell_Enemy1Bullet.png", 10, #FFEB2E, 1);
  }
  
  void act() {
    super.act();
    if (offScreen()) lives = 0;
  }
}
