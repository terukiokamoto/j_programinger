void setup() {
size (800, 800);
frameRate (60);
}

void draw() {
  PImage photo2 = loadImage("bus.png");
  for(int x = 0; x < 20; x++){
  image(photo2, random(width), random(height), 50, 50);
  }}