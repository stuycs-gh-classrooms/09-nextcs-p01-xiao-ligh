class Block{
  PVector center;
  int bsize;

   //default constructor
   Block(PVector p, int s) {
     bsize = s;
     center = new PVector(p.x, p.y);
   }

  boolean collisionCheck(Block other) {
    return ( this.center.dist(other.center)
             <= (this.bsize/2 + other.bsize/2) );
  }//collisionCheck

  //visual behavior
  void display() {
    square(center.x, center.y, bsize);
  }//display
}//class Block
