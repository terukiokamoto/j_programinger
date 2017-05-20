import processing.video.*;
Capture camera;

void setup() {
  size(480, 320);
  camera = new Capture(this, width/3, height/3, 12); 
  camera.start();
}

void draw() {
  image(camera, 0, 0); 
  image(camera, width*2/3, 0); 
  image(camera, 0, height*2/3); 
  image(camera, width*2/3, height*2/3); 
} 

void captureEvent(Capture camera) {
  camera.read();
}