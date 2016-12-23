int shade=0;

void setup(){
  size(500,500);
}

void draw(){
  background(fadeInfadeOut(shade));
}

int fadeInfadeOut(int val){
 int _val=val;
  
  if(val<255){ 
  while (val<255){
   val++; 
   _val=val;
  }
 }
 return(_val);
 
 
  
}
