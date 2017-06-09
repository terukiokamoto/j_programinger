void setup(){
  background(0);
  smooth();
  size(800, 600);
  frameRate(15);
  noStroke();
}

float r = 60;
float awax1 = 400;
float awax2 = 400;
float awax3 = 400;
float awax4 = 400;
float away1 = 450;
float away2 = 450;
float away3 = 450;    
float away4 = 450;    
    
void draw(){
  background(0);
  fill(100, 100, 255, 80);
  ellipse(400, 450, r, r);
  fill(100, 100, 255, 110);
  ellipse(400, 450, r-30, r-30);
  
  ellipse(awax1, away1, 10, 10);
  away1 = away1 - 5;
  awax1 = awax1 - noise(-10, 10);
  
  ellipse(awax2, away2, 12, 12);
  away2 = away2 - 7;
  awax2 = awax2 - noise(-4, 4);

  ellipse(awax3, away3, 15, 15);
  away3 = away3 - 3;
  awax3 = awax3 - noise(-6, 6);
  
  ellipse(awax4, away4, 10, 10);
  away4 = away4 - 8;
  awax4 = awax4 - noise(-15, 15);
}