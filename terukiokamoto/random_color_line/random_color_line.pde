size(200, 200);
colorMode(HSB, 100);
background(99);

for(int x = 0; x < width; x++){
  float color1 = random(100); 
  stroke(color1, 60, 99);
  line(x, 0, x, height);
}