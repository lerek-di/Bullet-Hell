class PowerUp2 extends GameObject {
  
  int Collected2;
  
  PowerUp2() {
    super(random(width), 0, 0, 4, "Bullet_Hell_Powerup2.png", 15, #40CEFF, 1);
  }
  
  void act() {
    super.act();
    if (y > height) lives = 0;
  }
}
