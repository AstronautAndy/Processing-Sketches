//This is a bouncing ball without a vector
float x = 100;
float y = 100;
float xSpeed=4;
float ySpeed=3;

void setup() {
 size(640,360);
 background(255); 
}

void draw() {
 x= x+xSpeed;
 y= y+ySpeed;
 
 if((x>width) || (x<0)){
  xSpeed=xSpeed * -1;
 } 
 
 if((y>height) || (y<0)){
  ySpeed=ySpeed * -1; 
 }
 
 stroke(0);
 fill(175);
 ellipse(x,y,16,16);
}
