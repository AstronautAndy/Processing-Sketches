    /*I want to mod this program so that it will automatically create IC cones until the 
    total number of possible combinations has been created*/
    //success! It worked!
    int chocolate = 0;
    int vanilla   = 1;
    int strawberry= 2;
    int pistachio = 3;
    int cookiesNcream = 4;
    int mint= 5;
    
    int bound= mint+1;
    int start= pistachio;

   /*First, you need to determine the total number of combinations you have have, saved
     as an int or float value. Next, we need code that will store each potential combination 
     as an array.*/
     
    IC [] set = new IC[possibilities(start, bound)];
    
    void setup() {
      size(800,400);
      background(0);
      
    }
    
    void draw() {
      int pos=75;
      
      int cnt= 0;
    
     for(int x=start; x<bound; x++){
      for(int y=start; y<bound; y++){
       set[cnt]= new IC(2,pos,x,y);
       pos=pos+75;
       set[cnt].create();
       cnt++;
      } 
     }
    
    
   }
    
    class IC {
     int scoops;
     int pos;
     int flavor1;
     int flavor2;
     int [] flavors = new int [2];
     scoop [] s= new scoop[flavors.length];
     
     IC(int _scoops, 
              int _pos, 
              int _flavor1, 
              int _flavor2)  {
                
       scoops  =_scoops;
       pos=_pos;
       flavor1=_flavor1;
       flavor2=_flavor2;
       flavors[0]=_flavor1;
       flavors[1]=_flavor2;
     }
     
     void create() {
       fill(0,255,0);
       rectMode(CENTER);
       rect(pos, 300,50,70);
       for(int cnt=0;cnt<flavors.length;cnt++){
         s[cnt]= new scoop(flavors[cnt],pos,240-(cnt*60)); 
         s[cnt].create();
       }
     }
      
    }
    
    class scoop {
      int flavor;
      int pos;
      int ypos;
      //int c= color(0);
      
      scoop(int _flavor, int _pos, int _ypos){
        flavor= _flavor;
        pos= _pos;
        ypos= _ypos;
        
        
      }
      
      void create() {
        if(flavor==chocolate){
          fill(0,0,255); 
         }
         
         if(flavor==vanilla){
          fill(255); 
         }
         
         if(flavor==strawberry){
          fill(255,0,0); 
         }
        
         if(flavor==pistachio){
          fill(0,255,255); 
         }
         
         if(flavor==cookiesNcream){
          fill(150); 
         }
         
         if(flavor==mint){
          fill(100,255,0); 
         }
         
         ellipse(pos, ypos, 60, 60);
         
      }
    }
    
   int possibilities(int initialF, int finalF){
     int pCounter=0;
     
     int bound= finalF+1;
     for(int bValue=initialF; bValue < bound; bValue++){
       for(int tValue=initialF; tValue < bound; tValue++){
         pCounter++;
       }
     }
     return(pCounter);
   }
   

