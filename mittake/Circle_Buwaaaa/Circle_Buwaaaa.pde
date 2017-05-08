//ケーススタディ：Wave Clock1
//線で円がブワー

float _ang;
float _strokeCol;
float _strokeChg;

void setup(){
  size(500, 500);
  background(255);
  strokeWeight(5);
  smooth();
  strokeWeight(1);
  frameRate(500);
  
  _ang = 0;
  _strokeCol = 255;
}

void draw(){
  float radius = 200;
  int centx = width / 2;
  int centy = height / 2;
  
  float x1, y1, x2, y2;
  float rad = radians(_ang);
  x1 = centx + (radius * cos(rad));
  y1 = centy + (radius * sin(rad));
  float opprad = rad + PI;
  x2 = centx + (radius * cos(opprad));
  y2 = centy + (radius * sin(opprad));

  if(_strokeCol > 254) { _strokeCol = 0; }
  _strokeCol += 1;
  stroke(_strokeCol, 60);
  line(x1, y1, x2, y2);
  
  _ang += 0.7;
}