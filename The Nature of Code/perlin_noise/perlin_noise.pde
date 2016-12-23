int width = 50;
float t=0;
float t2=10000;

void setup() {
 size(200,200); 
}

void draw(){
 clear();
 float n = noise(t);
 float m= noise(t2);
 float x= map(n,0,1,10,width);
 float y= map(m,0,1,10,width);
 ellipse(x,y,10,10);
 t+=.05;
 t2+=.05;
 println(t);
}
