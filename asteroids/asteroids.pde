asteroid [] set = new asteroid[10];
//int height=500;
//int width =500;
boolean mouse=false;

void setup() {
 size(displayWidth,displayHeight);
 background(0);
 
 for(int cnt=0; cnt< set.length; cnt++){
  set[cnt] = new asteroid(random(0,8),random(20,40));
 } 
}

void draw() {
 delay(10);
 if(mouse==true){
  clear();
  mouse=false; 
 }
 for(int cnt=0; cnt< set.length; cnt++){
   set[cnt].display();
 } 
}

class asteroid {
 float trajectory;
 float size;
 
 asteroid(float _trajectory, float _size){
   trajectory=_trajectory;
   size=_size;
 }
 
 void display() {
  fill(0,100,255);
  ellipse(random(0,displayWidth),random(0,displayHeight),size,size);   
 }
  
}

void mousePressed() {
 mouse=true;
}
