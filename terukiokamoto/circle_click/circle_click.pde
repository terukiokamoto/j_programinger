void setup() {
  size(250, 250);
  frameRate(3);
}
void draw() {
  background (0, mouseX, mouseY);
}
void mousePressed() {
  fill(mouseY, mouseX, 0);
  ellipse(mouseX, mouseY, 30, 30);
}