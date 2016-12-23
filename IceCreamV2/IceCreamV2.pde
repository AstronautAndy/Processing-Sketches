    int chocolate = 0;
    int vanilla   = 1;
    int strawberry= 2;
   
    
    IC one;
    IC two;
    IC three;
    IC four;
    
    void setup() {
      one = new IC(2, 100, chocolate, chocolate); 
      two = new IC(2, 200, chocolate, vanilla);
      three=new IC(2, 300, chocolate, strawberry);
      four= new IC(2, 400, vanilla, strawberry);
      size(600,400);
      background(0);
    }
    
    void draw() {
     one.create(); 
     two.create();
     three.create();
     //four.create();
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
        
         //fill(c);
         ellipse(pos, ypos, 60, 60);
         
      }
    }
