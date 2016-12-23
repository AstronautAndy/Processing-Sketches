class ball {
 float xPos;
 float yPos;
 PVector pos;
 
 ball(float _xPos, float _yPos){
   xPos = _xPos;
   yPos = _yPos;
   pos = new PVector(xPos, yPos);
 }
 
 
}
 PVector vel1 = new PVector(3, 2);
 PVector vel2 = new PVector(2,3);

ball one = new ball(250,250);
ball two = new ball(100,100);

void setup() {
 size(300,300); 
 background(0);
}

void draw() {
  clear();
  fill(255,0,0);
  ellipse(one.pos.x,one.pos.y,10,10);
  
  fill(0,255,0);
  ellipse(two.pos.x,two.pos.y,10,10);
  one.pos.add(vel1);
  two.pos.add(vel2);
  
  if(one.pos.x > width || one.pos.x< 0){
   vel1.x = vel1.x * -1; 
  }
  
  if(one.pos.y > height || one.pos.y< 0){
   vel1.y = vel1.y * -1; 
  }
  
  if(two.pos.x > width || two.pos.x< 0){
   vel2.x = vel2.x * -1; 
  }
  
  if(two.pos.y > height || two.pos.y< 0){
   vel2.y = vel2.y * -1; 
  }
  
  
}