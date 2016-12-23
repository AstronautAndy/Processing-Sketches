class Baloon {
 PVector position; 
 PVector velocity;
 PVector acceleration;
 
 Baloon() {
  position = new PVector(random(100,200), height-100);
  velocity = new PVector(0,-1);
  acceleration= new PVector(0,0);
 }
 
 void update() {
  velocity.add(acceleration);
  position.add(velocity);
 }
 
 void display() {
  stroke(0);
  fill(175);
  ellipse(position.x,position.y,20,20);
 }
 
 void applyForce(PVector force){
  acceleration.add(force); 
 }
 
 

}

Baloon mover;

void setup(){
  mover = new Baloon();
  size(300,500);
  background(0);
}

void draw() {
 clear();
 mover.update();
 mover.display();
 PVector buoy = new PVector(0,-.05);
 
 if(mover.position.y == 0){
  mover.velocity.y = mover.velocity.y * -2; 
  mover.applyForce(buoy);
 }
 
 if(mousePressed) {
  
  PVector wind = new PVector(noise(-1,1)*.001,0); 
  mover.applyForce(wind);
 }
 
 
}