float x = 0.0;
float speed = 1.0;

void setup() {
  size(400, 400);
}

void draw() {
  background(204);
  if (keyPressed == true) {
    x += speed;
    //println(key);
  }
  ellipse(x, height/2, 60, 60);
}