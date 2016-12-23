float x = 200; 
float y = 200;  
float speed = 6; 

void setup() {
  size (400, 400);
  smooth();
}
void draw() {
  background(200); 
  float angel = atan2(mouseY-y, mouseX-x);
  if (dist(mouseX, mouseY, x, y) > speed) {
    x +=  cos(angel)*speed; // current location + the next "step"
    y +=  sin(angel)*speed;
  }
  pushMatrix();
  translate(x, y); 
  rotate(angel +  HALF_PI); 
  rect(-30, 0, 60, 250); 
  popMatrix();
}
