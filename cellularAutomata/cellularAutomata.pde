void setup(){
  size(800,800);
  background(0);
    CA cellAutomata = new CA();
    int distance = height/10;
    for(int i=0; i<distance; i++){
      cellAutomata.generate();
      cellAutomata.display();
    }
  
}

class CA {
 int [] cells;
 int [] ruleset = {0,1,0,1,1,0,1,0};
 int w = 10;
 int generation = 0;
 
 CA(){
  cells = new int[width/w];
  //ruleset = {0,1,0,1,1,0,1,0};
  cells[cells.length/2] = 1;
 }
 
 void generate() {
  int[] nextGen = new int[cells.length];
  println(nextGen.length);
  for(int i=1; i< cells.length-1; i++){
     int left = cells[i-1];
     int me = cells[i];
     int right = cells[i+1];
     nextGen[i] = rules(left,me,right);
  }
  cells = nextGen;
  generation++;
  println("Finished generation");
 }
 
 int rules(int a, int b, int c){
  String s = "" + a + b + c;
  int index = Integer.parseInt(s,2);
  return ruleset[index];
 }
 
 void display(){
   

    for(int i=0; i<cells.length; i++){
      if(cells[i] == 1){
        fill(0);
      }
      else{              
        fill(255);
      }
      rect(i*w,generation*w,w,w);
    }
 }
 
}