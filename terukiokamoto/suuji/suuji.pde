void setup() {
  size(450, 450);
  background(0, 0, 0);
}

void draw() {
  fill(random(256));
  textSize(random(12, 36));
  textAlign(CENTER);
  text(int(random(10)), random(width), random(height));
}