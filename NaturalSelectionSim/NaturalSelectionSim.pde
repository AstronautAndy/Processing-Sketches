String target;
int totalPopulation = 150;
DNA[] population ;
float mutationRate;
int generation;

void setup(){
  size(640,360);
  target = "to be or not to be";
  mutationRate  = 0.01;
  population = new DNA[totalPopulation];
  generation = 0;
  for(int i=0; i < population.length; i++){
   population[i] = new DNA(); 
  }
  
}

void draw(){
  ArrayList<DNA> matingPool = new ArrayList<DNA>();
  ArrayList<DNA> highFitness = new ArrayList<DNA>();
  ArrayList<DNA> fitnessRange1 = new ArrayList<DNA>();
  ArrayList<DNA> lowFitness = new ArrayList<DNA>();
 for(int i=0; i<population.length;i++){
   population[i].fitness(); //Set a fitness value for every DNA object in the population
   //println(population[i].fitness);
   if(population[i].fitness < 0.5){
     lowFitness.add(population[i]);
   }
   else if(population[i].fitness < 0.75){
     fitnessRange1.add(population[i]);
   }
   else{
     highFitness.add(population[i]);
   }
 }
 //println("Current gen: " + generation + " f<.5: " + lowFitness.size() +  " .50<f<75: " + fitnessRange1.size() + " .75<f<.1: " + highFitness.size());
  
   
 for(int i=0; i<population.length; i++){
   int n = int(population[i].fitness*100);
   for(int j=0; j<n;j++){
     matingPool.add(population[i]);
   }
 }
 
 for(int i=0; i<population.length; i++){
   int a = int(random(matingPool.size()));
   int b = int(random(matingPool.size()));
   DNA parentA = matingPool.get(a);
   DNA parentB = matingPool.get(b);
   DNA child = parentA.crossover(parentB);
   child.mutate();
   population[i] = child;
 }
 
 generation++;
}


class DNA {
  char[] genes = new char[18];
  
  float fitness;
  
  DNA crossover(DNA partner){
   DNA child = new DNA(); 
   int midpoint = int(random(genes.length));
   for(int i = 0; i<genes.length; i++){
    if(i> midpoint){
     child.genes[i] = genes[i]; 
    }
    else{
     child.genes[i] = partner.genes[i]; 
    }
    
   }
   return child;
  }
  
  void mutate(){
    for(int i=0; i<genes.length; i++){
     if(random(1) < mutationRate){
       genes[i] = (char) random(32,128);
     }
    }
  }
  
  void fitness(){
   int score = 0;
   for(int i=0; i<genes.length;i++){
    if(genes[i] == target.charAt(i)){
     score++; 
    }
   }
   fitness = (float) score/target.length();
   
  }
  
  DNA(){
    
    for(int i=0; i<genes.length; i++){
      genes[i] = (char) random(32,128);
      print(genes[i]);
    }
    println();
    
  }
  
}