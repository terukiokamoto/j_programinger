void setup() {
  size(250, 250);
  frameRate(20);
}
void draw() {
  background(mouseX, mouseY, 0);
  ellipse(width/2, height/2, mouseX, mouseY);
  stroke(0, 0, mouseX);
  fill(0, 0, mouseY);
}