class PowerUp1 extends GameObject {
  
  int Collected;
  
  PowerUp1() {
    super(random(width), 0, 0, 4, "Bullet_Hell_Powerup1.png", 15, #02D15D, 1);
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
}
