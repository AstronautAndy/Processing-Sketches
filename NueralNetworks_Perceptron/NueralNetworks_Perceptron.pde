Perpeptron ptron;
Trainer[] training = new Trainer[2000];
int count = 0;

//Function that we want to visualize
float f(float x){
  return (4)*x+1; 
 }

void setup(){
 size(640,360);
 ptron = new Perpeptron(3);
 for(int i =0; i<training.length; i++){
   float x = random(-width/2,width/2);
   float y = random(-height/2,height/2);
   int answer = 1;
   if(y< f(x)){
    answer = -1; 
   }
   training[i] = new Trainer(x,y,answer);
 }
}

void draw(){
 background(255);
 translate(width/2,height/2);
 ptron.train(training[count].inputs,training[count].answer);
 count = (count +1) % training.length ;
 
 for(int i=0; i<count; i++){
  stroke(0);
  int guess = ptron.feedForward(training[i].inputs);
  if(guess > 0){
   noFill(); 
  }
  else{
   fill(0); 
  }
  ellipse(training[i].inputs[0],training[i].inputs[1],8,8);
 }
 
}

class Perpeptron{
  float[] weights;
  float c = 0.01;
  
  Perpeptron(int n){
    weights = new float[n];
    for(int i=0; i< weights.length; i++){
      weights[i] = random(-1,1);
    }
  }
  
  void train(float[] inputs, int desired){
    int guess = feedForward(inputs); //Guess according to the inputs
    float error = desired - guess;
    for(int i = 0; i< weights.length; i++){ //Adjust weights according to the error
      weights[i] += c*error*inputs[i];
    }
  }
  
  int feedForward(float[] inputs) {
   float sum = 0;
   for(int i = 0; i<weights.length; i++){
    sum += inputs[i]*weights[i]; 
   }
   return activate(sum);
  }
  
  int activate(float sum){
   if(sum > 0){
    return 1;
   }
   else{
    return 0; 
   }
  }
}

class Trainer {
 float[] inputs;
 int answer;
 
 Trainer(float x, float y, int a){
   inputs = new float[3];
   inputs[0] = x;
   inputs[1] = y;
   inputs[2] = 1; //Bias input
   
   answer = a;
 }
 
 
 
 int getAnswer(float x, float y){
  float yline = f(x);
  if(y< yline){
   answer = -1; 
  }
  else{
   answer = 1; 
  }
  return answer;
 }
 
}