void setup() {
println(highestVal(5,7,4,13));
}

int highestVal(int a, int b, int c, int d){
  int [] order = new int[4];
  order[0]=a;
  order[1]=b;
  order[2]=c;
  order[3]=d;
  int highest=c;
  for(int cnt=0; cnt<order.length; cnt++){
   if(order[cnt]>highest){
      highest=order[cnt];    
   }
  }
 return(highest);
}
