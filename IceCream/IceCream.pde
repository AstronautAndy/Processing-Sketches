int chocolate = 0;
int vanilla   = 1;
int strawberry= 2;
int none      = 3;

IC one;
IC two;
IC three;

void setup() {
  one = new IC(2, 500, chocolate, vanilla); 
  two = new IC(2, 400, strawberry, vanilla);
  three=new IC(2, 100, chocolate, strawberry);
  size(600,400);
  background(0);
}

void draw() {
 //one.create(); 
 //two.create();
 three.create();
}

class IC {
 int scoops;
 int pos;
 int flavor1;
 int flavor2;
 int [] flavors = new int [2];
 
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
   for(int cnt=0; cnt<flavors.length;cnt++){
      ellipse(pos,180+(cnt*60),60,60);
      if(flavors[cnt]==chocolate){
       fill(0,0,255); 
       
      }
      else if(flavors[cnt]==vanilla){
       fill(255); 
       
      }
      else if(flavors[cnt]==strawberry){
       fill(255,0,0); 
       
      }
    }
 }
  
}
