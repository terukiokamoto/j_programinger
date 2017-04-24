void setup(){
  size(600, 400);
  background(255);
}

float x = 300;
float y = 200;
int r = 180;

void draw(){
  fill(255, 10);
  noStroke();
  rect(0, 0, 60, 40);
  x = x + random(-5, 5);
  y = y + random(-5, 5);
  int i = 0;
  while(i < 10){
    noFill();
    stroke(random(255), random(255), 255);
    ellipse(x + random(-10, 10), y + random(-10, 10), r, r);
    i = i + 1;
  }
}
