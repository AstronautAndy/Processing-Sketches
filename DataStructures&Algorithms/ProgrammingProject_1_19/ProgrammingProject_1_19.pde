float value;
float remainder;

void setup() {
 for(int a=1; a<1001; a++){
  for(int b=1; b<1001; b++){
     value = ((a*a)+(b*b) +1)/(a*b);
     remainder = ((a*a)+(b*b)+1)%(a*b);
     if(a<b){
      if(remainder == 0){
       println(a + " * " + b + " = " + value);
      } 
     }
  } 
 }
}
