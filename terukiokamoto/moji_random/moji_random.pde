void setup() {
  size(400, 400);
  background(0, 0, 0);
}

void draw() {
}

void keyPressed() {
  fill(random(256), random(102), 255);
  textSize(random(24, 64));
  textAlign(CENTER);
  text(key, random(width), random(height));
}