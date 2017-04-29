void setup() {
  size(800, 800);
  background(0);
  frameRate(60);
}


void draw(){
for (int i = 0; i < width; i++) {
  
  if (i%3 == 0) stroke(255, 0, 0); 
  else if (i%3 == 1) stroke(0, 255, 0); 
  else stroke(0, 0, 255); 
  line(i, 0, i, height);
}}