int[] data;

void setup() {
  size(200,200);
  // Load text file as a string
  String[] stuff = loadStrings("data.txt");
  // Convert string into an array of integers using ',' as a delimiter
  data = int(split(stuff[0],','));
}

void draw() {
  background(255);
  stroke(0);
  for (int i = 0; i < data.length; i++) {
    fill(data[i]);
    ellipse(100,100,data[i],data[i]);
  }
}
