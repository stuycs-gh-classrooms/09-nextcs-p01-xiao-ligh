/*
A copy of breakout made in processing by Jason Xiao and Checed Ligh
 NextCS P01
 */

//Global Variables
//gameplay variables
boolean playing;
float gameSpeed;
int maxProjectiles, maxPowerups;

//Arrays
Projectile[] projectiles;
Powerup[] powerups;
Block[][] blocks;

//Sizing + Display
int numRows, numCols, bottom, bSize;//for block display
int prSize, pwrSize;//sizing for projectiles and powerups
int bsize;//for projectile
int paddleX, paddleY, paddleW, paddleH;//for paddle display

void setup() {
  size(1000, 750);
  playing = false;
  gameSpeed = 1;
  maxProjectiles = 250;
  projectiles = new Projectile[maxProjectiles];
  prSize = 10;
  powerups = new Powerup[maxPowerups];
  bottom = 650;
  bSize = 10;
  numRows = bottom / bSize;
  numCols = width / bSize;
  blocks = new Block[numRows][numCols];
  paddleX = width / 2;
  paddleY = height - (height - bottom) / 2;
  paddleW = 50;
  paddleH = 20;
  newGame();
  drawScreen();
}//setup

void draw() {
  if (playing) {
    gameUpdate();
    drawScreen();
  }//check if playing
}//draw

void gameUpdate() {
  for (int i = 0; i < maxProjectiles; i++) {
    if (projectiles[i] != null) {
      projectiles[i].move();
      projectiles[i].checkCollision_paddle();
      projectiles[i].checkCollision_blocks();
    }//check if object at index
  }//update projectile position
}//gameUpdate

void drawScreen() {
  background(0);
  //draw blocks by looping through 2D array
  for (int r = 0; r < numRows; r++) {
    for (int c = 0; c < numCols; c++) {
      blocks[r][c].display();
    }//loop through cols
  }//loop through rows

  for (int i = 0; i < maxProjectiles; i++) {
    if (projectiles[i] != null) {
      projectiles[i].display();
    }//check if there is an object at the index
  }//loop through projectile array to display them

  /*
  for (int i = 0; i < maxPowerups; i++) {
   if (projectiles[i] != null) {
   powerups[i].display();
   }//check if there is an object at the index
   }//loop through powerups array to display them
   */  //for when we add powerups

  //draw Paddle
  rectMode(CENTER);
  fill(255);
  rect(paddleX, paddleY, paddleW, paddleH);
}//drawScreen

void newGame() {
  spawnBlocks_basic();
  projectiles[0] = new Projectile(new PVector(paddleX, paddleY - (paddleH / 2) - (prSize / 2)), new PVector(1, -1));
}//newGame

void endGame() {
}//endGame

void spawnBlocks_basic() {
  for (int r = 0; r < numRows; r++) {
    for (int c = 0; c < numCols; c++) {
      blocks[r][c] = new Block(c * bSize, r * bSize, bSize);
    }//loop through cols
  }//loop through rows
}//spawnBlocks_basic

void mouseMoved() {
  if (playing) {
    paddleX = mouseX;
  }//if playing
}//mouseMoved

void keyPressed() {
  if (key == ' ') {
    playing = !playing;
  }//pause and play

  if (!playing) {
    if (key == 'r') {
      newGame();
      drawScreen();
    }//new game / reset game
  }//make it so you can only reset game when you are paused
}//keyPressed
