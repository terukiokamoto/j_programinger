void setup(){
  size(600, 600);
  background(0);
  smooth();
}

float x = 60;
float y = 60;
float rad;

void draw(){
  for(rad = 0; rad < 360; rad +=10){
  stroke(255, 255, 255);
  point(300 + x * sin(rad), 300 + y * cos(rad));
  }
}