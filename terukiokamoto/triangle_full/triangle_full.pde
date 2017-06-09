void setup() {
  fullScreen();
  frameRate(8);
}

void draw(){
background(0);
noStroke();
fill(random(255), random(255), random(255), 120);
triangle(random(width), random(height), random(width), random(height), random(width), random(height));
  }
  