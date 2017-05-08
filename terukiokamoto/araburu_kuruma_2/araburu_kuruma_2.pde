void setup() {
size (800, 800);
frameRate (60);
  }

void draw() {
  PImage photo2 = loadImage("bus.png");
  for(int x = 50; x < 80; x++){
  image(photo2, random(width), random(height), random(300), random(300));
  }}