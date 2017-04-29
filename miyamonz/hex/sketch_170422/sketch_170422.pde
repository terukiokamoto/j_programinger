int windowWidth = 400;
void setup(){
  size(400,400,OPENGL);
}

void draw(){
  clear();
  float t = millis()/1000.;
  float w = windowWidth/20;
  for(int i=0; i<20; i++){
    for(int j=0; j<20; j++){
      pushMatrix();
      translate(i*w,j*w);
      translate(w/2,w/2);
      float phase = 10*t + i+j;
      float h = w*(float)Math.sin(phase);
      translate(0,0,h);
      fill(map(h,-w,w,0,255));
      box(w);
      popMatrix();
    }
  }
}

