PImage photo01;
PImage photo02;
PImage photo03;

void setup(){
  size(500, 350);
  frameRate(8);
  photo01 = loadImage("sapporo.JPG");
  photo02 = loadImage("moere.JPG");
  photo03 = loadImage("shingo.JPG");
}

void draw(){
  background(0);
}

void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
       image(photo01, 0, 0);
    } else if (keyCode == DOWN) {
       image(photo02, 0, 0);
    }
  }
}