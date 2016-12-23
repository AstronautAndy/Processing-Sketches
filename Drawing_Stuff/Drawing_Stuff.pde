int prev_posX = 0;
int prev_posY = 0;
int posX;
int posY;

void setup() {
 size(500,500);
 background(255);
}

void draw() {
  fill(255);
  line(prev_posX,prev_posY,posX,posY);
  prev_posX=posX;
  prev_posY=posY;
  println(posX);
  println(posY);
}

void mousePressed(){
  posX=mouseX;
  posY=mouseY;
}
