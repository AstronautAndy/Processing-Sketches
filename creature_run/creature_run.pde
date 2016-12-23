int creatureSpeed= 1;
int startX= 50;
int startY= 50;
int goalX= 150;
int goalY= 200;

creature manny = new creature(50,50);
goal Goal = new goal(goalX,goalY);

void setup() {
    size(300,300);
    background(0); 
}

void draw() {
 clear();
 manny.display();
 manny.search(Goal.posX,Goal.posY); 
 Goal.display();
 if(manny.posX == Goal.posX && 
    manny.posY == Goal.posY){
     println("You're Winner!");  
    }
}

//Create a Creature that will automatically run towards a goal

class creature {
  int posX;
  int posY;
  
  
  creature(int _posX, int _posY){
   posX= _posX;
   posY= _posY; 
  }
  
  void display() {
   fill(0,200,100);
   ellipse(posX,posY,10,10);
  }
  
  void search(int goalX, int goalY){
      if(posX<goalX){
         posX=posX+creatureSpeed;
      }
      
      if(posX>goalX){
         posX=posX-creatureSpeed; 
      }
      
      if(posY<goalY){
         posY=posY+creatureSpeed; 
      }
      
      if(posY>goalY){
         posY=posY-creatureSpeed; 
      }
  }
}

class goal {
  int posX;
  int posY;
  
  goal(int _posX, int _posY){
    posX= _posX;
    posY= _posY;
  }
  
  void display(){
    fill(255,0,0);
    ellipse(posX,posY,10,10); 
  }
}
