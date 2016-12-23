int [] data; 
int low_value;

void setup() {
 String[] stuff = loadStrings("data.txt");
 data = int(split(stuff[0],','));
 println("Lowest Value: " + findLowestValue(data));
}

int findLowestValue( int [] x){
 low_value=x[0];
 for(int i=0; i<x.length;i++){
   if(x[i]<low_value){
      low_value=x[i];
   } 
 }
 return(low_value); 
}

//int [] reorder(int [] x){
// int [] reordered_array= new int [x.length];
// int smallest;
// smallest = x[0];
// 
// for(int i=0; i<x.length;i++){
//   if(x[i]<smallest){
//      smallest=x[i];
//   } 
// }
//}
