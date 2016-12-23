void setup() {
  brackets(100,2);
}

void brackets(int howMany, int lineLength){
  int currValue=1;
  int _lineLength=0;
  while(currValue != howMany+1){
    print("[" + currValue +"]");
    currValue++;  
    _lineLength++;
    if(_lineLength==lineLength){
     println();
     _lineLength=0; 
    }
  }
}
