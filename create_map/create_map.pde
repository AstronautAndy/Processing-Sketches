int [][] map = { {0,0,1,1,1},
                 {1,0,1,1,1},
                 {1,0,0,0,1}, 
                 {1,1,0,1,1},
                 {1,0,0,0,1},
                 {1,1,1,1,1},
             
           
         };
int modifyer=50;
wall maze= new wall();
int end= map.length;
int end1= map[0].length;

void setup() {
 background(0);
 size((end1*50),(end*50));
 //size(500,500);
}  

void draw(){
 maze.display(map); 
}
            
class wall {
 
 wall(){
  
 } 
 
 void display(int [][] grid){
  for(int x=0; x<grid.length; x++){
   for(int y=0; y<grid[x].length; y++){
    if(grid[x][y]==1){
     fill(150,0,150);
     rectMode(CENTER);
     rect((25+y*50),(25+x*50),50,50);
    } 
   }
  } 
 }
  
}
