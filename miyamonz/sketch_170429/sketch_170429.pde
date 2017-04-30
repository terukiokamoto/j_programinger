RectUI ui;
void setup(){
  size(400,400,OPENGL);
  ui = new RectUI();
}

void draw(){
  float t = millis()/1000.;
  clear();
  ui.update();
  ui.draw();
  Rect area = ui.getRect();
  int n = 10;
  for(int i=0; i<n; i++){
    for(int j=0; j<n; j++){
      pushMatrix();
      float w = width/n;
      float x = w/2. + i*w;
      float y = w/2. + j*w;
      translate(w/2., w/2.);
      translate(i*w, j*w);
      fill(100,200,100);
      if(ui.state == State.SELECTED && area.isInside(x,y)){
        rotateX(t);
        fill(200,100,100);
      }
      box(w*0.6);
      popMatrix();
    }
  }
}
