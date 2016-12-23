/*
The goal of version two is two encapsulate the AI of the hunters 
in their class, so I can call a method to have them hunt a particular
character.
*/

pc guy = new pc();
hunter [] set= new hunter[5];
int hunterSpeed = 5;

void setup() {
 size(1000,1000); 
 background(0);
 for(int cnt=0; cnt<set.length; cnt++){
   set[cnt]= new hunter(300,(100*cnt+50)); 
 }
}

void draw() {
  clear();
  for(int cnt=0; cnt<set.length; cnt++){
      set[cnt].hunt(guy.posX,guy.posY);
      set[cnt].show();
  }

      guy.display();
}

class pc {
  int posX=mouseX;
  int posY=mouseY;
  
//  pc(int _posX, int _posY){
//    posX= _posX;
//    posY= _posY;
//  }
  
  void display() {
    fill(255);
    ellipse(mouseX,mouseY, 20,20);
    posX=mouseX;
    posY=mouseY;
    
    
  }
}

class hunter {
 int posX;
 int posY;

 hunter(int _posX, int _posY){
  posX= _posX;
  posY= _posY;
 } 
 
 void show() {
   fill(255,0,0);
   ellipse(posX,posY,10,10);
 }
 
 void hunt(int locX, int locY){
      
      if(locX>posX){
         posX= posX + hunterSpeed; 
      }
      
      if(locX<posX){
         posX=posX - hunterSpeed; 
      }
      
      if(locY>posY){
         posY= posY + hunterSpeed; 
      }
      
      if(locY<posY){
         posY= posY - hunterSpeed; 
      }
   }
   
}
