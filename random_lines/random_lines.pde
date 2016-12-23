int posX= 250;
int posY= 250;


void setup() {
 size(500,500); 
 background(0);
}

void draw() {
  fill(0,0,255);
  ellipse(posX, posY,10,10);
  float direction = random(0,1);
  if((posX>0 && posX<500) &&
        (posY>0 && posY<500) ){
  if(direction<.25){
    posX=posX+5; 
  }
  
  else if(direction<.5){
    posX=posX-5; 
  }
  
  else if(direction<.75){
   posY=posY+5; 
  }
  
  else if(direction<1){
   posY=posY-5; 
  }
        }
}
