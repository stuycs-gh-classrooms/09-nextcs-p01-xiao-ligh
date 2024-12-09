class Block {
  PVector center;
  int bsize;
  boolean exists;

  //default constructor
  Block(int TLx, int TLy, int s) {
    bsize = s;
    center = new PVector(TLx + s / 2, TLy + s / 2);
    exists = true;
  }

  //visual behavior
  void display() {
    if (exists) {
      rectMode(CENTER);
      fill(255, 255, 0);
      square(center.x, center.y, bsize);
    }//if statement
  }//display
}//class Block
