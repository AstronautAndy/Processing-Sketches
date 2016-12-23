pc guy = new pc();
hunter [] set= new hunter[3];
int hunterSpeed = 5;

void setup() {
 size(500,500); 
 background(0);
 for(int cnt=0; cnt<set.length; cnt++){
   set[cnt]= new hunter(300,(100*cnt+50)); 
 }
}

void draw() {
  clear();
  for(int cnt=0; cnt<set.length; cnt++){
    
      if(guy.posX>set[cnt].posX){
         set[cnt].posX= set[cnt].posX + hunterSpeed; 
         
      }
      
      if(guy.posX<set[cnt].posX){
         set[cnt].posX=set[cnt].posX - hunterSpeed; 
      }
      
      if(guy.posY>set[cnt].posY){
         set[cnt].posY= set[cnt].posY + hunterSpeed; 
      }
      
      if(guy.posY<set[cnt].posY){
         set[cnt].posY= set[cnt].posY - hunterSpeed; 
      }
      
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
    println(posX);
    println(posY);
    
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
}
