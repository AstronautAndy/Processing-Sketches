//This will be a bouncing ball program that uses vectors
 PVector position = new PVector(100,100);
 PVector velocity = new PVector(3,2);
void setup() {
 size(150,150);
 background(0);
 
}

void draw() {
  ellipse(position.x,position.y,15,15);
  position.add(velocity);
 
  
  if(position.x<0 || position.x>width){
    velocity.x= velocity.x * -1;
  }
  
  if(position.y<0 || position.y>height){
    velocity.y= velocity.y * -1; 
  }
  
}

class PVector {
  float x;
  float y;
  
  PVector(float _x, float _y){
   x = _x;
   y = _y;
  }

  void add(PVector v){
   y = y + v.y;
   x = x + v.x;
  }
}