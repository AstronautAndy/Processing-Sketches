void setup () {
 size(640, 360); 
}

void draw () {
 
 PVector mouse = new PVector(mouseX, mouseY);
 PVector center= new PVector(width/2,height/2);
 mouse.sub(center);
 translate(width/2,height/2);
 background(mouse.mag());
 line(0,0,mouse.x,mouse.y);
 
}