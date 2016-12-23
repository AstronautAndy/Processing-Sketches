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
  
  if(   one.posX !=markerX ||
        one.posY !=markerY){
          clear();
         one.follow(markerX,markerY);
         if(markerY>one.posY){
          one.posY++ ;
         }
         
         if(markerY<one.posY){
          one.posY--; 
         }
         
         if(markerX>one.posX){
          one.posX++; 
         }
         
         if(markerX<one.posX){
          one.posX--;
         }
         ellipse(one.posX,one.posY,10,10);
          
   }
  
}

class leader {
 int radX;
 int radY;
 int posX;
 int posY;
 
  leader(int _radX, int _radY){
   radX=_radX;
   radY=_radY;
   
  } 
  
  void create() {
    fill(0,0,255);
    ellipse(startX,startY,radX,radY);
    posX=startX;
    posY=startY;
  }
  
  void follow(int locX, int locY){
    line(posX,posY,locX,locY); 
  }
  
}

void mousePressed(){
  markerX=mouseX;
  markerY=mouseY;
}