//Not a complete program
void setup(){
  
}

void draw(){
  
}

class Rocket {
 PVector location; 
 PVector velocity;
 PVector acceleration;
 DNA dna;
 int geneCounter = 0;
 float fitness;
 
 Rocket(){
   
 }
 
 void run() {
  applyForce(dna.genes[genecounter]);
  geneCounter++;
  update();
 }
 
 void applyforce(PVector f){
   acceleration.add(f);
 }
 
 void update(){
  velocity.add(acceleration);
  location.add(velocity);
  acceleration.mult(0);
 }
 
 void fitness(){
  float d = PVector.dist(location,target);
  fitness = pow(1/d,2);
 }
 
}

class DNA {
   PVector[] genes; 
   float maxForce = 0.1;
   DNA(){
     genes = new PVector[lifetime];
     for(int i=0; i<genes.length; i++){
      genes[i] = PVector.random2D();
      genes[i].mult(random(0,maxForce));
     }
   }
   
}

class population {
  float mutationRate;
  float l_Fitness;
  float m_Fitness;
  float h_Fitness;
  int lt;
  Rocket[] population;
  ArrayList<Rocket> matingPool;
  ArrayList<Rocket> lowFitness;
  ArrayList<Rocket> midFitness;
  ArrayList<Rocket> highFitness;
  int generations;
  
  void setFitnessValues(float l, float m, float h){
    l_Fitness = l;
    m_Fitness = m;
    h_Fitness = h;
  }
  
  population(int size, float MR, int GNS){ //Initialize all values within the population
    population = new Rocket[size];
    mutationRate = MR;
    matingPool = new ArrayList<Rocket>();
    generations = GNS;
  }
  
  void fitness(){ //Find the fitness of each rocket in the matingPool
    for(int i=0; i< population.length; i++){
      population[i].fitness();
    }
  }
  
  void selection(){
    for(int i=0; i<population.length; i++){
     int n = int(population[i].fitness*100);
     for(int j=0; j<n;j++){
     matingPool.add(population[i]);
     }
    }
    //for(int i= 0; i<population.length; i++){
    //  if(population[i].fitness < l_Fitness){
        
    //  }
    //  else if(population[i].fitness < m_Fitness){
        
    //  }
    //  else{
        
    //  }
    //}
  }
  
  void reproduction(){
    
  }
  
  void live(){
    for(int i=0; i < population.length; i++){
      population[i].run();
    }
  }
  
}