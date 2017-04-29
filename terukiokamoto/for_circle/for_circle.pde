void setup() {
  size(800, 800);
  background(0);
  frameRate(60);
}
void draw() {
 for(int i = 0; i < 6; i++){
   ellipse(100 + 100 * i, 100 + 100 * i, 60, 60); 
 }
 
 fill(100, 255, 50);
 for(int i = 0; i < 6; i++){
   for(int j = 0; j < 6; j++){
   ellipse(100 + 100 * i, 100 + 100 * j, 30, 30); 
 }}
}