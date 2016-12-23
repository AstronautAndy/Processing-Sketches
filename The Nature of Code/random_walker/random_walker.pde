int posX=250;
int posY=250;
double dice;

double moveUp=0;
double moveDown=0;
double moveLeft=0;
double moveRight=0;
double total;

void setup(){
  size(500,500);
  background(0); 
}

void draw() {
  clear();
  ellipse(posX,posY,10,10);
  dice=random(0,1);
  
  if(dice<.25){
  posX+=random(1,20);
  moveRight++;
  }
  
  else if(dice<.5){
  posY+=random(1,20);
  moveDown++;
  }
  
  else if(dice<.75){
   posX-=random(1,20); 
   moveLeft++;
  }
  
  else if(dice<1){
   posY-=random(1,20); 
   moveUp++;
  }
  total =moveUp + moveDown + moveLeft + moveRight;
//  println("Move up: " + moveUp);
//  println("Move down: " + moveDown);
//  println("Move left: " + moveLeft);
//  println("Move Right: " + moveRight);
    println((moveUp/total)*100 + "%");
    println((moveDown/total)*100 + "%");
    println((moveLeft/total)*100 + "%");
    println((moveRight/total)*100 + "%");
}
