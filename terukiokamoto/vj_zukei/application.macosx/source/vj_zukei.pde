void setup(){
  size(800, 600);
  background(0);
}



void draw(){
    if((keyPressed == true) && (key == 'a')) {
      background(0);
      fill(random(255), random(255), random(255), 120);
      noStroke();
      rect(width/3, height/3, width/3, height/3);
    }
    
    
float x = 400;
float y = 300;
int r = 240;

    if ((keyPressed == true) && (key == 's')){
      background(0);
      fill(random(255), random(255), random(255), 120);
      noStroke();
      x = x + random(-15, 15);
      y = y + random(-15, 15);
      ellipse(x, y, r, r);
    }
    
   if ((keyPressed == true) && (key == 'd')) {
     fill(random(255), random(255), random(255), 120);
     noStroke();
     triangle(random(width), random(height), random(width), random(height), random(width), random(height));
    }
    
  if ((keyPressed == true) && (key == 'f')) {
  textSize(random(12, 36));
  textAlign(CENTER);
  text(int(random(10)), random(width), random(height));
  }
      if((keyPressed == true) && (key == 't')) {
      background(0);
    }
}