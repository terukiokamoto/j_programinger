void setup() {
  size(400, 400);
  strokeWeight(10);
}

void draw() {
  if (mousePressed == true){
    stroke (mouseY, random(255), mouseX);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mouseReleased() {
  background(random(255), random(255), random(255)); 
}