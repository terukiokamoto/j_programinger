PImage img;

void setup(){
  size(960, 640);
  img = loadImage("data/01_photo01.jpg");
}

void draw(){
  image(img, 0, 0, width, height);
  noStroke();
  rect(630, 280, 150, 150);
}