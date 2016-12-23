int height = 500;
int width = 500;
int rippleWidth=10;
int rippleHeight=10;
boolean mouse;

void setup() {
 size(height,width); 
}

void draw() {
  
 if(mouse){ 
 while(rippleWidth<width && rippleHeight<height){
   ellipse(mouseX,mouseY,rippleWidth,rippleHeight);
   rippleWidth++;
   rippleHeight++; 
  }
 }
}

void mousePressed() {
  mouse=true;
}
