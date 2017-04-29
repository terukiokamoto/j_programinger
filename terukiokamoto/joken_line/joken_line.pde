void setup() {
  size(800, 800);
  background(255, 255, 255);
  frameRate(20);
}

void draw() {
for(int i = 0; i < width; i++){
  if (i % 3 == 0 && i % 7 != 0)
  line(i, 0, i, height);
}}