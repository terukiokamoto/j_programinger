size (500, 500);
colorMode(HSB, 360, 256, 256);
background(0);
noStroke();
smooth();
rectMode(CENTER);

for (int i = 0; i<720; i++){
  pushMatrix();
  translate(random(width), random(height));
  rotate(random(PI/2));
  scale(random(0.5, 5));
  fill(0, 0, random(255), 51);
  rect(0, 0, 10, 10);
  popMatrix();
}