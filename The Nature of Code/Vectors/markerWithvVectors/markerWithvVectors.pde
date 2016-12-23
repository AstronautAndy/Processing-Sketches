int xMarker;
int yMarker;
boolean clicked = false;


void setup() {
 size(500,500);
}

void draw() {
 background(0);
 if(clicked){
   ellipse(xMarker,yMarker,10,10);
 }
}


void mousePressed(){
  clicked = true;
  xMarker = mouseX;
  yMarker = mouseY;
}