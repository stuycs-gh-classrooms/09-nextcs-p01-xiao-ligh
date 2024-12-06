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
int paddleX, paddleY, paddleL, paddleW;//for paddle display

void setup() {
  size(1000, 750);
  playing = false;
  gameSpeed = 1;
  maxProjectiles = 250;
  projectiles = new Projectile[maxProjectiles];
  powerups = new Powerup[maxPowerups];
  bottom = 650;
  bSize = 10;
  numRows = bottom / bSize;
  numCols = width / bSize;
  blocks = new Block[numRows][numCols];
  drawScreen();
  bsize = 40;
}//setup

void draw() {
  if (playing) {
    gameUpdate();
    drawScreen();
  }//check if playing
}//draw

void gameUpdate() {
}//updateScreen

void drawScreen() {

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
  */ //for when we add powerups
}//updateScreen

void newGame(){
  
}//newGame

void endGame(){
  
}//endGame

void keyPressed(){
  if(key == ' '){
    playing = !playing;
  }//pause and play
  
  if(!playing){
    if(key == 'r'){
      newGame();
      drawScreen();
    }//new game / reset game
  }//make it so you can only reset game when you are paused
}//keyPressed
