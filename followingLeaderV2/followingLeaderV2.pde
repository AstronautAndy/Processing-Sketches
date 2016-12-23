int startX= 50;
int startY= 50;
int height= 400;
int width = 400;
leader one = new leader(10,10);
obstacle a = new obstacle(30,25,150,300);
obstacle b = new obstacle(50,75,70,200);
obstacle c = new obstacle(70,30,150,150);
int markerX=startX;
int markerY=startY;
int speed=3;

void setup() {
  size(width,height);
  background(0);
  one.create();
  a.display();
  b.display();
  c.display();
}

void draw() {
  if(   one.locX !=markerX ||
        one.locY !=markerY){
         
          
         if(markerY>one.locY){
          one.locY=one.locY+speed ;
         }
         
         if(markerY<one.locY){
          one.locY=one.locY-speed; 
         }
         
         if(markerX>one.locX){
          one.locX=one.locX+speed; 
         }
         
         if(markerX<one.locX){
          one.locX=one.locX-speed;
         }
         clear();
         fill(0,0,255);
         ellipse(one.locX,one.locY,10,10);
         a.display();
         b.display(); 
         c.display();
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

class obstacle {
 int sizeX;
 int sizeY;
 int xPos;
 int yPos; 
  
 obstacle(int _sizeX, int _sizeY, int _xPos, int _yPos){
  sizeX= _sizeX;
  sizeY= _sizeY;
  xPos = _xPos;
  yPos = _yPos; 
 }
  
  void display(){
   fill(0,255,0);
   rectMode(CENTER);
   rect(xPos,yPos,sizeX,sizeY);  
  }
  
}

void mousePressed(){
  markerX=mouseX;
  markerY=mouseY;
}
