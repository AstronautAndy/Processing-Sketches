class asteroid {
  int sizeX;
  int sizeY;
  PVector momentum; 
  PVector position = new PVector(250,250);
  asteroid(int _sizeX, int _sizeY, int mom1, int mom2) {
   momentum = new PVector(mom1,mom2);
   sizeX = _sizeX;
   sizeY = _sizeY;
 }
 
 void display() {
  ellipse(position.x, position.y,sizeX, sizeY); 
 }
}

asteroid [] set = new asteroid[1];

void setup () {
 size(500,500);
 background(0);
 
}

void draw() {
    set[0] = new asteroid(10,10, 3, 4);
 
    set[0].position.add(set[0].momentum);
    
    
    if(set[0].position.x == 0 || set[0].position.x == width){
       set[0].momentum.x = set[0].momentum.x * -1;  
    }
    
    if(set[0].position.y == 0 || set[0].position.y == height){
       set[0].momentum.y = set[0].momentum.y * -1;  
    }
    set[0].display();
    println(set[0].position);

}