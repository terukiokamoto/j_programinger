import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class na1 extends PApplet {

public void setup(){
  
  background(255);
}

float x = 300;
float y = 200;
int r = 180;

public void draw(){
  fill(255, 10);
  noStroke();
  rect(0, 0, 60, 40);
  x = x + random(-5, 5);
  y = y + random(-5, 5);
  int i = 0;
  while(i < 10){
    noFill();
    stroke(random(255), random(255), 255);
    ellipse(x + random(-10, 10), y + random(-10, 10), r, r);
    i = i + 1;
  }
}
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "na1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
