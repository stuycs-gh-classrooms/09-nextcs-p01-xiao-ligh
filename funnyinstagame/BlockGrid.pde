class BlockGrid{
  //Global Variables
  Block[][] block;
  PVector topLeft;
  int blockSize;
  int blockW;
  int blockH;
  
  BlockGrid(int rows, int cols, int blockSize){
    block = new Block[rows][cols];
    blockSize = blockSize;
    blockW = blockSize * cols;
    blockH = blockSize * rows;
    topLeft = new PVector(blockSize/2, blockSize/2);
  }//constructor
  
  void makeBlocks() {
    PVector pos = topLeft.copy();
    for (int r = 0; r < block.length; r++) {
      for(int c = 0; c < block[r].length; c++) {
        block[r][c] = new Block(pos, blockSize);
        pos.x += blockSize;
      }//columns
      pos.y += blockSize;
      pos.x = topLeft.x;
    }//rows
  }//makeBlocks
  
  void display() {
    for (int r = 0; r < block.length; r++) {
      for(int c = 0; c < block[r].length; c++) {
        if (block[r][c] != null) {
          block[r][c].display();
        }
      }//columns
    }//rows
  }//display
  
  boolean collisionCheck() {
    
  }//boolean
  
}//class Block
