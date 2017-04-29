Timer timer = new Timer(1000);
ArrayList<Hex> hexes = new ArrayList<Hex>();
void setup(){
  size(400, 400, OPENGL);
  timer.setTick( new Visitor() {
    @Override
    public void tick(){
      Hex h0 = hexes.get(0);
      for(int i=0; i<hexes.size(); i++){
        Hex h = hexes.get(i);
        Hex hn = (i+1 == hexes.size()) ? h0 : hexes.get(i+1);
        h.moveTo(hn.x, hn.y, timer.uTime/3.);
      }
    }
  });
  for(int shell=0; shell<5; shell++){
    for(int i=0; i<6; i++){
      for(int leaf=0; leaf<shell; leaf++){
        Hex h = new Hex();
        h.c = color(random(255), random(255), random(255));
        hexes.add(h);
      }
    }
  }
  initPosition();
}

void initPosition(){
  int radius = 30;
  float w = radius * 2;
  int index = 0;
  for(int shell=0; shell<5; shell++){
    pushMatrix();
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
        Hex h = hexes.get(index);
        h.x = v.x;
        h.y = v.y;
        // h.moveTo(v.x,v.y, timer.uTime/2.);
        h.radius = radius;
        popMatrix();
        index++;
      }
    }
    popMatrix();
  }

}

int windowWidth = 400;
void draw(){
  clear();
  timer.draw();
  translate(windowWidth/2., windowWidth/2.);
  int index = 0;
  for(int shell=0; shell<5; shell++){
    for(int i=0; i<6; i++){
      for(int leaf=0; leaf<shell; leaf++){
        Hex h = hexes.get(index);
        h.draw();
        index++;
      }
    }
  }
}
