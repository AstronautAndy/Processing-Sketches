 slider Slider = new slider(100,100,10,30);
void setup () {

  size(500,500);
  background(0);
  stroke(255);
  line(100,100,400,100);
}

void draw() {
 Slider.display(); 
}

class slider {
int startPos1;
int startPos2;
int x1;
int y1;
int sliderValue;

 slider( int t1,
         int t2,
         int t3,
         int t4 )
 {
  startPos1= t1;
  startPos2= t2;
  x1 = t3;
  y1= t4;
 }

  void display() {
   rectMode(CENTER);
   fill(0,255,0);
   rect(startPos1,startPos2,x1,y1);  
  }
  
}

void mousePressed() {
  
}
