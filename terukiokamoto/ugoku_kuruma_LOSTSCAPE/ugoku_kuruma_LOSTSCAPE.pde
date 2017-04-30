void setup() {
size (800, 800);
}

void draw() {
  PImage photo2 = loadImage("bus.png");
  PImage logo = loadImage("http://pbs.twimg.com/media/CjD-ZADXIAEJ4e5.jpg");
  image(photo2, mouseX, mouseY);
  tint(50, mouseX, mouseY);
  image(logo, 100, 100, 450, 300);
}