import processing.video.*;
Capture camera;


void setup() {
  frameRate(10);
  size(960, 720);
  camera = new Capture(this, width, height, 12); 
  camera.start();
}

void draw() {
  image(camera, 0, 0); 
  noStroke();
  fill(random(255), random(255), random(255), 95);
  triangle(random(width), random(height), random(width), random(height), random(width), random(height));
} 

void captureEvent(Capture camera) {
  camera.read();
}