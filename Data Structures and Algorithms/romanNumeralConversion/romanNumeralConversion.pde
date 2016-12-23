int val = 35;
int _val = 0;
int tenCount=0;
int fiveCount=0;
int oneCount=0;

void draw() {
  if(_val != val){
    if(checkTen(val, _val)==true){
      print("X");
      _val+=10;
      tenCount++;

    }
    
    else if(checkFive(val,_val)==true){
      print("V");
      _val+=5;
      fiveCount++;
      
    }
    
    else if(checkOne(val,_val)==true){
     print("I");
     _val+=1;
     oneCount++;
    }
     
  }
}

boolean checkTen(int x, int counter){
 boolean found=false;
 counter+=10;
 if(counter==x){
  found=true; 
 }
 
 else if(counter<x){
  found=true;
 }
 return found;
}

boolean checkFive(int x, int counter){
  boolean found=false;
 counter+=5;
 if(counter==x){
  found=true; 
 }
 
 else if(counter<x){
  found=true;
 }
 return found;
}

boolean checkOne(int x, int counter){
  boolean found=false;
 counter+=1;
 if(counter==x){
  found=true; 
 }
 
 else if(counter<x){
  found=true;
 }
 return found;
}