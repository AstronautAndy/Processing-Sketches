Walker one;
int height=400;
int width =400;

void setup(){
 one = new Walker(200,200);
 size(height,width);
 background(0); 
}

void draw() {
 clear();
 one.display();
 one.move(); 
 
}

class Walker {
  int x; 
  int y; 
  float roll;
  int speed=1;
  
  Walker(int _x, int _y){
   x=_x;
   y=_y; 
  }
  
  void display() {
    fill(255);
    ellipse(x,y,10,10);
  }
  
  void move(){
   if((x<width && 0<x) &&
      (y<height && 0<y)){ 
    roll=random(0,1);
    if(roll<.25){
     x=x+speed; 
    }
    else if(roll<.5){
     x=x-speed; 
    }
    
    else if(roll<.75){
     y=y+speed; 
    }
    
    else if(roll<1) {
     y=y-speed; 
    }
   }
  }
}

