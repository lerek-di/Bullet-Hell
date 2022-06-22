abstract class GameObject {
  
  float x, y, vx, vy, size;
  color c;
  int lives;
  
  PImage img;
  
  GameObject(float x, float y, float vx, float vy, String imgname, float size, color c, int lives) {
    this.x     = x;
    this.y     = y;
    this.vx    = vx;
    this.vy    = vy;
    this.size  = size;
    this.c     = c;
    this.lives = lives;
    
    img = loadImage(imgname);
  }
  
  void act() {
    x += vx;
    y += vy;
  }
  
  void show() {
    imageMode(CENTER);
    image(img, x, y, size, size);
  }
  
  boolean collidingWith(GameObject obj) {
    return (dist(obj.x, obj.y, x, y) < obj.size/2 + size/2);
  }
  
  boolean offScreen() {
    return x < -10 || x > width + 10 || y < -20 || y > height + 10;
  }
}
