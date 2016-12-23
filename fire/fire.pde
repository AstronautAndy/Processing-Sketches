fire Fire = new fire();
void setup() {
  size(500,500);
}

void draw() {
  Fire.create();
}

class fire {
  int randHeight= random(0,50);
  int randWidth = random(0,25);
  int randColor = random(170,255);
  
  void create() {
    rectMode(CENTER);
    rect(mouseX,mouseY,randHeight,randWidth);
    fill(randColor, 0,0);
  }
}
