void polygon(float centerX, float centerY, float R,int num){
  pushMatrix();
  translate(centerX, centerY);
  rotate(radians(90));
  beginShape();
  float x,y;
  for (int i=0; i < num; i++) {
    x = R * cos(radians(360/num * i));
    y = R * sin(radians(360/num * i));
    vertex(x, y);
  }
  endShape(CLOSE);
  popMatrix();
}
