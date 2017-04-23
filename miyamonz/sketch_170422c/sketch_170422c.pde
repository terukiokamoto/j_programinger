class Timer {
  public float uTime;
  float oldTime;
  float nextTickTime;
  public int num=0;
  Timer (float _utime) {
    uTime = _utime;
    nextTickTime = uTime;
  }
  void draw(){
    float newTime = millis();
    if( nextTickTime < newTime ) {
      tick();
      nextTickTime += uTime;
      num++;
    }
    oldTime = newTime;
  }
  void tick(){
    c = color(random(255),random(255), random(255));
  }
}

int windowWidth = 400;
Timer timer;
void setup(){
  timer = new Timer(1000);
  size(400,400,OPENGL);
}

int num = 10;
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

int red = 255;
color c;
void draw(){
  clear();
  timer.draw();
  fill(255);
  background(red);
  float t = millis()/1000.;
  int radius = 30;
  float w = radius * 2;
  for(int shell=0; shell<5; shell++){
    pushMatrix();
    translate(windowWidth/2., windowWidth/2.);
    float shellWidth = radius * 2 * sqrt(3)/2.;
    float shellRadius = shellWidth * shell;
    for(int i=0; i<6; i++){
      PVector v0 = new PVector(
          shellRadius * cos(radians(60.*i)),
          shellRadius * sin(radians(60.*i)));
      for(int leaf=0; leaf<shell; leaf++){
        pushMatrix();
        PVector v1 = v0.copy().rotate(radians(60));
        PVector v = v1.copy().sub(v0).div(shell).mult(leaf);
        v.add(v0);
        if(timer.num % 5 == shell) {
          rotate(radians(60)*millis()/timer.uTime);
          fill(random(255));
        }
        else fill(100);
        translate(v.x, v.y);
        polygon(0,0,radius, 6);
        popMatrix();
      }
    }
    popMatrix();
  }
}

