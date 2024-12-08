class Projectile {
  PVector position;
  PVector velocity;
  int size;

  Projectile(PVector p, PVector v) {
    size = prSize;
    position = new PVector(p.x, p.y);
    velocity = new PVector(v.x, v.y);
  }

  void move() {
    if (position.x > width - size/2 || position.x < size/2) {
      velocity.x *= -1;
    }//move velocity.x
    if (position.y < size / 2) {
      velocity.y *= -1;
    }//move velocity.y
    position.x += velocity.x;
    position.y += velocity.y;
  }//move

  void display() {
    fill(255, 0, 0);
    circle(position.x, position.y, size);
  }//display()

  void checkCollision_paddle() {
    if (position.x > paddleX - paddleW / 2 && position.y + size/2 >= paddleY - paddleH/2 && position.x < paddleX + paddleW / 2) {
      velocity.y *= -1;
    }//if statement
  }//checkCollision
}//class Projectile
