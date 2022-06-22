class Enemy1 extends Enemy {
  
  Enemy1() {
    super("Bullet_Hell_Enemy1.png", #FFEB2E, 1, 40);
  }
  
  void act() {
    super.act();
    
    if (frameCount % 180 == 0) {
      objects.add(new EnemyBullet(x, y, 1, 10));
      objects.add(new EnemyBullet(x, y, -1, 10));
    }
  }
  
}
