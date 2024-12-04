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

void setup(){
  size(1000, 750);
  playing = false;
  gameSpeed = 1;
  maxProjectiles = 250;
  projectiles = new Projectile[maxProjectiles];
  powerups = new Powerup[maxPowerups];
  bottom = 650;
  bSize = 10;
}//setup

void draw(){
  
}//draw
