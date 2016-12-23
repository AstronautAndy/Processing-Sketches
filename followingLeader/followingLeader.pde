int startX= 50;
int startY= 50;
leader one = new leader(10,10);
int markerX;
int markerY;


void setup() {
  size(400,400);
  background(0);
  one.create();
}

void draw() {
  
  if(   one.locX !=markerX ||
        one.locY !=markerY){
          clear();
         if(markerY>one.locY){
          one.locY++ ;
         }
         
         if(markerY<one.locY){
          one.locY--; 
         }
         
         if(markerX>one.locX){
          one.locX++; 
         }
         
         if(markerX<one.locX){
          one.locX--;
         }
         ellipse(one.locX,one.locY,10,10);
          
   }
  
}

class leader {
 int radX;
 int radY;
 int locX;
 int locY;
 
  leader(int _radX, int _radY){
   radX=_radX;
   radY=_radY;
   
  } 
  
  void create() {
    fill(0,0,255);
    ellipse(startX,startY,radX,radY);
    locX=startX;
    locY=startY;
  }
  
  
  
}

void mousePressed(){
  markerX=mouseX;
  markerY=mouseY;
}