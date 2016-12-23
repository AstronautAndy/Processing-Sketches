person sally =new person(random(500),random(500),random(50,100),random(50,100),"Sally");
person bobby =new person(random(500),random(500),random(50,100),random(50,100),"Bobby");
person kevin =new person(random(500),random(500),random(50,100),random(50,100),"Kevin");


PFont f;

void setup() {
  size(500,500);
  background(0);
  f = createFont("Arial", 16, true);
}

void draw () {
  sally.create();
  sally.over_person();
  bobby.create();
  bobby.over_person();
  kevin.create();
  kevin.over_person();
}

class person {
 float xPos;
 float yPos;
 float bHeight;
 float bWidth;
 String name;
 
  
  person(float txPos, //Constructor
         float tyPos, 
         float tbHeight, 
         float tbWidth, 
         String tname)
  {
    xPos= txPos;
    yPos= tyPos;
    bHeight= tbHeight;
    bWidth= tbWidth;
    name= tname;
  }
  
  void over_person() {
    float rad1= bWidth/2;
    float rad2= bHeight/2;
    if(mouseX>(xPos-rad1) &&
       mouseX<(xPos+rad1) &&
       mouseY>(yPos-rad2) &&
       mouseY<(yPos+rad2)){
         textFont(f);
         fill(0,255,0);
         text(name,xPos,yPos);
         textAlign(CENTER);
    }
  }
  
  void create() {
   fill(255,0,0);
   ellipse(xPos,yPos,bHeight,bWidth); 
  }
}
