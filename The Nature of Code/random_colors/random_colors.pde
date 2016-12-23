
float xoff=0;
float yoff=0;
float change=.5;

void draw() {
  loadPixels();
  for(int x = 0; x<width; x++){
    for(int y = 0; y<height; y++) {
        xoff+=change;
        yoff+=change;
        float bright = map(noise(xoff,yoff),0,1,0,255);
        pixels [x+y*width]=color(bright);
    }
  }

updatePixels();
}
