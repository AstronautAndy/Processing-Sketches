int length=500; 
int width =300;
terrain [] ground= new terrain[length];

void setup () {
 size(length,width);
 background(50,50,255);
}

void draw() {  
  for(int cnt=0; cnt< length;cnt++){
    ground[cnt]= new terrain(random(0,150),cnt);
    ground[cnt].display();
  }
}

class terrain {
  float rlength=1;
  float rHeight;
  int pos;
  
  
  terrain(float _rHeight, int _pos){
   rHeight=_rHeight; 
   pos=_pos;
  }
  
  void display() {
   fill(0,255,0);
   rectMode(CENTER);
   rect(pos,(length-(rHeight/2)), rlength, rHeight);
  }
}
