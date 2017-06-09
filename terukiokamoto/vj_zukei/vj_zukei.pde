void setup(){
  fullScreen();
  background(0);
  frameRate(24);
}

float x = 620;
float y = 380;
int r = 240;
float v = 10;  

void draw(){
    if((keyPressed == true) && (key == 'a')) {
      background(0);
      fill(random(255), random(255), random(255), 120);
      noStroke();
      rect(width/3, height/3, width/3, height/3);
    }


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
   
        if ((keyPressed == true) && (key == 'g')){
      stroke(random(255), random(255), random(255));
      strokeWeight(1);
      line (v%width - 360, 0, v%width + 240, 960);
      line (width - (v%width + 240), 0, width - (v%width - 360), 960);
      v = v + 10;
    }
}