int [][] table= new int[13][13];

void setup() {
 for(int x=1; x<table.length;x++){
  for(int y=1; y<table[x].length;y++){
    table[x][y]=x*y;
    print(table[x][y] + " ");
   
  }
  println();
 } 
}
