int [] pallette = new int [3];

void setup() {
 size(400,400); 
}

void draw(){
 //clear();
 rectMode(CENTER);
 
 if(mouseX<100){
     pallette[0]=250;
     pallette[1]=0;
     pallette[2]=0; 
   }
   else if(mouseX<200){
     pallette[0]=0;
     pallette[1]=250;
     pallette[2]=0;
   }
   else if(mouseX<300){
     pallette[0]=0;
     pallette[1]=0;
     pallette[2]=250;
   }
   else if(mouseX<400){
     pallette[0]=0;
     pallette[1]=0;
     pallette[2]=0;
   }
 
 fill(pallette[0],pallette[1],pallette[2]);
 rect(200,200,100,100); 
 
 
}



