//I'm building this as a simple exercise to 
xyConverter converter = new xyConverter();
void setup(){
  size(300,300);
}

void draw(){
  background(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
  String values;
  values =  str( converter.convertX(mouseX) ) ;
  values += " ";
  values += str( converter.convertY(mouseY) );
  textSize(16);
  fill(0, 102, 153);
  text(values,width/10,height/10);
  //clear();
}

class xyConverter{
  xyConverter(){
    
  }
  
  int convertX(int inputX){
    int newX;
    if(inputX > width || inputX < 0 ){
      println("ERROR: Input out of bounds");
      newX = 0;
    }
    else if(inputX<width/2){ //Case: negative value
      newX = width/2 - inputX;
      newX*= -1;
    }
    else{
     newX = inputX- width/2; 
    }
    return newX;
  }
  
  int convertY(int inputY){
    int newY;
    if(inputY > height || inputY < 0){
     println("ERROR: Input out of bounds");
     newY = 0;
    }
    else if(inputY < height/2){
     newY = height/2 - inputY; 
    }
    else{
     newY = inputY - height/2;
     newY *= -1;
    }
    return newY;
  }
  
}