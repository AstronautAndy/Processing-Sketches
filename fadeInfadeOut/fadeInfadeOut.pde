int cnt=0;

void setup() {
 size(500,500);
 background(255,0,0);
}

void draw() {
   if (cnt==0 && cnt != 255){
     ellipse(250,250,100,100);
     fill(0,255,cnt);
     cnt++;
  }
  
  if(cnt==255){
     ellipse(250,250,100,100);
     fill(0,255,cnt);
     cnt--;
  }
}
