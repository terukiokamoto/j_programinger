float x, y, z;
float speed;
int w;

void setup(){
   size(450, 450);
   x = 0.0;
   y = height/2.0;
   speed = 3.0;
   w = 10;
}

void draw(){
  PImage photo = loadImage("nakanishi.jpg");
    background(255, 255, 255);
    x += speed * random(0.6, 3);
    if (x > width) {
      x = -w;
      y = random(width - w);
    }
    translate (x, y);
    image(photo, w, w, 80, 100);
}