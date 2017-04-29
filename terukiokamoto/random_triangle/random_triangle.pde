void setup() {
  size(700, 700);
  background(0);
  frameRate(10);
  colorMode(RGB,100);
}

void draw() {
  noStroke();
  fill(random(255), random(255), random(255),25);
triangle(random(height), random(width), random(height), random(width), random(height), random(width));
}