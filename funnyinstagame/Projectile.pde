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
  
  void checkCollision_blocks() {
  for (int r = 0; r < numRows; r++) {
    for (int c = 0; c < numCols; c++) {
      Block block = blocks[r][c];
      if (block.exists) {
        if (position.x >= block.center.x - block.bsize / 2 && position.x <= block.center.x + block.bsize / 2 && position.y >= block.center.y - block.bsize / 2 && position.y <= block.center.y + block.bsize / 2) {
          block.exists = false;
          velocity.y *= -1;
          return;
        }//remove block and change direction if statement
      }//check projectile position
    }//columns
  }//rows
}//checkCollision_blocks
  
  void checkCollision_paddle() {
    if (position.x >= paddleX - paddleW / 2 && position.x <= paddleX + paddleW / 2 && position.y + size/2 >= paddleY - paddleH/2 && position.y - size/2 >= paddleY - paddleH/2) {
      velocity.y *= -1;
    }//if statement
  }//checkCollision
  
  
  /*
    checks collisions for a projectile and rectangle generally, and returns the edge or corner that was hit.
    Used for both paddle and block collisions
    
   1--------2--------3
   |                 |
   |                 |
   8                 4
   |                 |
   |                 |
   7--------6--------5
   
   0 represents not hit
  */
  
  int checkCollision(){
    int hitpart;
    
    return hitPart;
  }//
  
}//class Projectile
