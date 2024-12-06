class Projectile{
  PVector ball;
  PVector velocity;
  int size;
  
  Projectile(PVector b, PVector v, int size){
    size = bsize;
    ball = new PVector(b.x, b.y);
    
    velocity = new PVector(v.x, v.y);
  }
  
  void move() {
    if(ball.x > width - bsize/2 || ball.x < bsize/2) {
      velocity.x *= -1;
    }//move velocity.x
    if(ball.y > height - bsize/2) {
      velocity.y *= -1;
    }//move velocity.y
    ball.x += velocity.x;
    ball.y += velocity.y;
  }//move
  
  void display() {
    circle(ball.x, ball.y, bsize);
  }//display()
  
  void checkCollision_paddle() {
    if(ball.x > paddleX && ball.y + size > paddleY && ball.x < paddleX + paddleL) {
      velocity.y *= -1;
    }//if statement
  }//checkCollision
  
}//class Projectile
