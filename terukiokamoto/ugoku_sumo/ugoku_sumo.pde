void setup() {
size (600, 600);
frameRate (144);
}

void draw() {
  for(int x = 50; x < 90; x++){
    PImage photo2 = loadImage("sumo.png");
  image(photo2, random(width), random(height), x, x * 2);
  }}