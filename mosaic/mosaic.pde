int height = 250;
int width  = 250;
tile [] set = new tile[height];

void setup() {
 size(height, width); 
 println(set.length);
 
}

void draw() {
  
 for(int i=0; i<249; i++){
     
      set[i]= new tile(i,i,i,i);
      set[i].display();
  
 }
 
}

class tile {
 int locX;
 int locY;
 int c1;
 int c2;
  
 tile(int _locX,int _locY,int _c1, int _c2){
 int locX= _locX;
 int locY= _locY;
 int c1= _c1;
 int c2= _c2;
 }
 
 void display() {
  rectMode(CENTER);
  fill(c1,c2,0);
  rect(locX,locY,1,1); 
 }
 
}
