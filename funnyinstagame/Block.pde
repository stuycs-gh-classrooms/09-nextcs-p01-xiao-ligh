class Block {
  PVector center;
  int bsize;
  boolean exposed;

  //default constructor
  Block(int TLx, int TLy, int s) {
    bsize = s;
    center = new PVector(TLx + s / 2, TLy + s / 2);
    exposed = true;
  }

  //visual behavior
  void display() {
    if (exposed) {
      rectMode(CENTER);
      fill(255, 255, 0);
      square(center.x, center.y, bsize);
    }//if statement
  }//display
}//class Block
