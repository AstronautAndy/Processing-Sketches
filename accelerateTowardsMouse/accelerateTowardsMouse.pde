float topspeed = 10;

class Mover {
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 void update () {
   PVector mouse = new PVector(mouseX,mouseY);
   PVector dir = PVector.sub(mouse,location);
   dir.normalize();
   dir.mult(0.5);
   acceleration = dir;
   velocity.add(acceleration);
   velocity.limit(topspeed);
   location.add(velocity);
 }
 
 Mover() {
  location = new PVector(random(width), random(height) );
  velocity = new PVector(random(-10,10), random(-10,10) );
  acceleration = new PVector(random(-.0001,.0001),random(-.0001,.0001));
 }
 
 void display () {
   stroke(0);
   fill(175);
   ellipse(location.x,location.y,20,20);
 }
 
 void checkEdges() {
  if(location.x > width) {
   location.x = 0; 
  }
  
  else if(location.x < 0 ){
   location.x = width; 
  }
  
  if (location.y > height) {
   location.y = 0; 
  }
  
  else if (location.y < 0) {
   location.y = height; 
  }
 }
}

Mover one;

void setup() {
 one = new Mover();
 size(500,500);
 background(0);
} 

void draw() {
 one.update();
 one.checkEdges();
 one.display();
}