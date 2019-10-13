/*Write two additional methods for the Flower class 
- one that moves the flower with some velocity, 
and another that bounces the flower when it reaches any of the screen boundaries.
*/
class Flower {
  
 // Variables
 
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor;//hexadecimal number for the color of petals
 float speedX=6;   // the x-axis speed of the flower
  float speedY=speedX;   // the y-axis speed of the flower
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
}

void display () {
  
  float ballX;
  float ballY;
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
//  ballX=width/2 + r*cos(i);
//  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
}

void move() {
 x=x+speedX; //increases the x-value by speedX pr. frame.
 y=y+speedY;//increases the y-value by speedY pr. frame.
 
}

void bounce (){
   if (x>width||x<=0){//Makes the flower inverse speed if x-axis' limits is reached.
   speedX*=-1; 
     println("turn back");
 } 
 if (y>height||y<=0){ //Makes the flower inverse speed if y-axis' limits is reached.
    speedY*=-1; 
   println("turn around");
 }
}
}
