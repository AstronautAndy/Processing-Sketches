int [][] map = { {1,1,1,1,1,1,1},
                 {1,0,1,0,0,0,1},
                 {1,0,0,0,1,0,1}, 
                 {1,1,0,1,0,0,1},
                 {1,0,0,0,1,0,1},
                 {1,0,1,0,0,0,1},
                 {1,1,1,1,1,1,1},
                 {1,1,1,1,1,1,1}
             
           
         };
int modi=20;
int end= map.length;
int end1= map[0].length;
int wallCount=0;  
wall [] set; 

void setup() {
 background(0);
 size((end1*modi),(end*modi));
 
 for(int x=0; x<map.length; x++){
  for(int y=0; y<map[x].length; y++){
      if(map[x][y]==0){
        wallCount++;                         //Count up the total number of walls
      }
  } 
 }
 set = new wall[wallCount];                  //Create an array of walls based on the 
                                             //number of walls we created. 
for(int cnt=0; cnt< set.length; cnt++){       //Start counting at 0..
 for (int x=0; x<map.length; x++){           //If there is a value "0" anywhere
  for (int y=0; y<map[x].length; y++){       //In the map
    
   if(map[x][y]==0){
                                             //I think the poblem is occuring here 
        set[cnt]=new wall(x,y);              //Create a new wall at that location
     
      
   }
  }
 }
}
 println("wallCount in setup: " + wallCount);
 
}  

void draw(){
  for(int cnt=0; cnt<set.length; cnt++){
   set[cnt].display(); 
  }

}
            
class wall {
 int posX;
 int posY;
  
 wall(int x, int y){
  posX=x;
  posY=y;
 } 
 
 void display(){
   fill(150,0,150);
   rectMode(CENTER);
   rect(((modi/2)+posY*modi),((modi/2)+posX*modi),modi,modi);
 }
  
}
