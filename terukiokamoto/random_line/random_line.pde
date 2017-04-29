void setup() {
  size(800, 800);
  background(0);
  frameRate(30);
  colorMode(RGB,100);
}
void draw() {
for(int i = 0; i < 100; i++){
  stroke(random(100), random(100), random(100));
  line(random(width), random(height), random(width), random(height));
}
}