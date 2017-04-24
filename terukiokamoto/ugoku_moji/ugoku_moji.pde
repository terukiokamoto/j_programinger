void setup() {
  size(800, 800);
  background(0);
  frameRate(20);
}
void draw() {
fill(mouseX, mouseY, 0);
textSize(mouseX/7);
text("UNKO",mouseX,mouseY);
}