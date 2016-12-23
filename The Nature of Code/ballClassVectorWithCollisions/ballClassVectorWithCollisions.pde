float radius = 15;

class ball {
 float xPos;
 float yPos;
 PVector pos;
 
 ball(float _xPos, float _yPos){
   xPos = _xPos;
   yPos = _yPos;
   pos = new PVector(xPos, yPos);
 }
 
 boolean rightCollision (ball A, ball B) {
   boolean flag = false;
   if(B.pos.x + radius == A.pos.x - radius ||
      B.pos.x + radius < A.pos.x - radius){
       flag = true; 
      }
   return flag;
 }
 
 boolean leftCollision (ball A, ball B) {
  boolean flag = false;
  if(B.pos.x - radius == A.pos.x + radius ||
     B.pos.x - radius < A.pos.x + radius){
      flag = true; 
     }
  return flag;
 }
 
 boolean topCollision (ball A, ball B) {
  boolean flag = false;
  if(B.pos.y - radius == A.pos.y + radius ||
     B.pos.y - radius < A.pos.y + radius){
      flag = true; 
      println("top Collision");
     }
  return flag;
 }
 
  boolean botCollision (ball A, ball B) {
  boolean flag = false;
  if(B.pos.y + radius == A.pos.y - radius ||
     B.pos.y + radius < A.pos.y - radius){
      flag = true; 
      println("Bottom Collision");
     }
  return flag;
 }
 
}


 PVector vel1 = new PVector(4, 2);
 PVector vel2 = new PVector(2,3);

  ball one = new ball(100,100);
  ball two = new ball(150,250);

void setup() {
 size(300,300); 
 background(0);
}

void draw() {
  clear();
  fill(255,0,0);
  ellipse(one.pos.x,one.pos.y,radius*2,radius*2);
  
  fill(0,255,0);
  ellipse(two.pos.x,two.pos.y,radius*2,radius*2);
  one.pos.add(vel1);
  two.pos.add(vel2);
  
  if(one.pos.x > width ||
     one.pos.x <0  ||
     one.rightCollision(one,two) ||
     one.leftCollision(one,two) ){
   vel1.x = vel1.x * -1; 
  }
  
  if(one.pos.y > height || 
     one.pos.y< 0 ||
     one.topCollision(one,two) ||
     one.botCollision(one,two)){
   vel1.y = vel1.y * -1; 
  }
  
  if(two.pos.x > width ||
     two.pos.x< 0 ||
     two.rightCollision(one, two) ||
     two.leftCollision(one,two) ){
   vel2.x = vel2.x * -1; 
  }
  
  if(two.pos.y > height ||
     two.pos.y< 0 ||
     two.topCollision(one,two) ||
     two.botCollision(one,two)){
   vel2.y = vel2.y * -1; 
  }
}