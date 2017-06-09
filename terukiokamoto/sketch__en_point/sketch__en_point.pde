void setup(){
  size(800, 600);
  smooth();
  background(0);
 
}

float cx = sin(mouseX*360);
float cy = cos(mouseY*360);
float r = 80;
float radius = 30;


void draw(){
  for (int i = 0; i < 360; i += 10){
  stroke(mouseX%255, mouseY%255, atan2(mouseX, mouseY)*random(150)%255, 130);
  strokeWeight(5);
  point(radius * sin(i) + mouseX, radius * cos(i) + mouseY);
  }}
  