
class Neuron{
 PVector location;
 ArrayList<Connection> connections;
 int sum = 0;
 
 Neuron(float x, float y){
   location = new PVector(x,y);
   connections = new ArrayList<Connection>();
 }
 
 void display(){
  stroke(0);
  fill(0);
  ellipse(location.x,location.y,16,16);
  for(Connection c: connections){
    c.display();
  }
 }
 
 void addConnection(Connection c){
   connections.add(c);
 }
 
 void feedForward(float input){
   sum += input;
   if(sum > 1){
    fire();
    sum =0;
   }
 }
 
 void fire(){
  for(Connection c: connections){
   c.feedForward(sum); 
  }
 }
 
 void updateConnections(){
   println("In Neuron object, updating all connections");
  for(Connection c: connections){
   c.update(); 
  }
 }
 
}

class Network {
 ArrayList<Neuron> neurons;
 PVector location;
 
 Network(float x, float y){
  location = new PVector(x,y);
  neurons = new ArrayList<Neuron>();
 }
 
 void addNeuron(Neuron n){
   neurons.add(n);
 }
 
 void display(){
  pushMatrix();
  translate(location.x,location.y);
  for(Neuron n: neurons){
    n.display();
  }
  popMatrix();
 }
 
 void connect(Neuron a, Neuron b){
  Connection c = new Connection(a,b,random(1)); 
  a.addConnection(c); //Adding a connection to both to make the graph bidirectional
  b.addConnection(c);
 }
 
 void feedForward(float input){
  Neuron start = neurons.get(0);
  start.feedForward(input);
 }
 
 void update(){
   for(Neuron n: neurons){
     n.updateConnections();
   }
 }
 
}

class Connection {
 Neuron a;
 Neuron b;
 float weight;
 boolean sending = false;
 PVector sender;
 float output;
 
 Connection(Neuron from, Neuron to, float w){
   weight = w;
   a = from;
   b = to;
 }
 
 void display(){
  println("Now displaying connection");
  stroke(0);
  strokeWeight(1+weight*4);
  line(a.location.x,a.location.y,b.location.x,b.location.y);
  if(sending){
   fill(0);
   strokeWeight(1);
   ellipse(sender.x,sender.y,16,16);
  }
 }
 
 void feedForward(float val){
   output = val*weight;
   sender = a.location.get();
   sending = true;
   b.feedForward(val*weight);
 }
 
 void update(){
  if(sending){
   sender.x = lerp(sender.x,b.location.x,0.1); 
   sender.y = lerp(sender.y,b.location.y,0.1);
   float d = PVector.dist(sender,b.location);
   if(d <1){
    b.feedForward(output);
    sending = false;
   }
  }
 }
 
}

Network network;
void setup (){
  size(640,360);
  network = new Network(width/2,height/2);
  Neuron a = new Neuron(-200,0);
  Neuron b = new Neuron(0,100);
  Neuron c = new Neuron(0,-100);
  Neuron d = new Neuron(200,0);
  network.addNeuron(a);
  network.addNeuron(b);
  network.addNeuron(c);
  network.addNeuron(d);
  network.connect(a,b);
  network.connect(a,c);
  network.connect(c,d);
  network.connect(b,d);
  
}

void draw(){
 clear();
 background(255);
 network.update();
 network.display();
 
 if(frameCount % 30 == 0){
   network.feedForward(random(1));
 }
}