void setup() {
size (800, 800);
frameRate (60);
}

void draw() {
  PImage photo2 = loadImage("fujita.png");
  for(int x = 0; x < 1; x++){
  image(photo2, random(width), random(height), 80, 100);
  }}