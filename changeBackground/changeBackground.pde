int shade=0;

void setup() {
 size(500,500);
 //background(0); 
}

void draw(){
 while(true){
 if(shade<255){

     shade++; 

 }
 
 if(shade==255){
  shade=0; 
 }
 println("Shade: " + shade);
 fill(shade,0,150);
 rect(250,250,50,50);
 }
 
  
}


