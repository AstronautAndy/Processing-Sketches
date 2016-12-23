int border1 = 100;
int border2 = 400;

class Mover {
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 void update () {
   velocity.add(acceleration);
   location.add(velocity);
 }
 
 Mover() {
  location = new PVector(width/2, height/2 );
  velocity = new PVector(random(-1,1), random(-1,1) );
  acceleration = new PVector(.1,.1);
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
 
 void adjustAccel() {
  if(location.y > border2){
    acceleration.y = acceleration.y * -1; 
    
  }
  
  else if(location.y < border1){
    acceleration.y = acceleration.y * -1; 
    
  }
  
  if(location.x > border2){
    acceleration.x = acceleration.x * -1; 
    
  }
  
  else if(location.x < border1){
    acceleration.x = acceleration.x * -1; 
    
  }
 }
}

Mover one;

void setup() {
 one = new Mover();
 size(500,500);
 background(255);
}

void draw() {
 if(one.acceleration.x < 0){
  background(255,0,0); 
 }
 
 else {
  background(0,0,255); 
 }
 line(border1,0,border1,500);
 line(border2,0,border2,500);
 line(0,border1,500,border1);
 line(0,border2,500,border2);
 one.update();
 one.checkEdges();
 one.adjustAccel();
 one.display();
 
}