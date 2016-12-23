PFont dasFont = createFont( "Ariel", 12 );

class TFextbox {
  int xpos;
  int ypos;
  String myText;
  int delayTime;
  int creationTime;
  int currentIndex;
  TFextbox( String _myText, int _xpos, int _ypos, int _delayTime ) {
    myText = _myText;
    xpos = _xpos;
    ypos = _ypos;
    delayTime = _delayTime;
      creationTime = millis();
    currentIndex = 0;
  }
  void draw() {
    while( millis() - creationTime > delayTime ){
      creationTime += delayTime;
      currentIndex+=1;
    }
    textFont( dasFont );
    fill( 0,0,255);
    stroke(255);
    rect( xpos, ypos, width - 40, 15 );
    fill(255);
    noStroke();
    currentIndex = constrain( currentIndex, 0, myText.length());
    text( myText.substring(0,currentIndex), xpos+3, ypos+12 );
  }
    
  }

TFextbox box1;

void setup(){
  size( 420, 100);
  box1 = new TFextbox( "ZELDA: Link, you must hurry to the castle to save me. I'm in trouble!", 20, 20, 100);
}

void draw(){
  background(0);
  box1.draw();
}
