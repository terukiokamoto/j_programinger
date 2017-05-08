void setup() {
  size(420, 240);
  background(255, 255, 255);
    float y = random(10, 15);
    
  for (float x = 5; x + y < 420; x++){
  line (x, 0, x, height);
  stroke(0, 0, 0);
  strokeWeight(random(5, 8));
  x = x + y;}
}