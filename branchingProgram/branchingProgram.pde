void setup(){
  size(500,300);
}

void draw(){
  background(255);
  branch(50);
}

void branch(float len){
  line(0,0,0,height-len);
  translate(0,-len);
  len*=.66;
  if(len > 2){
    pushMatrix();
    rotate(PI/6);
    branch(len);
    popMatrix();
    pushMatrix();
    rotate(-PI/6);
    branch(len);
    popMatrix();
  }
}