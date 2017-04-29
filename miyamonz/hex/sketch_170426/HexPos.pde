class IntPos {
  int x = 0;
  int y = 0;
  IntPos(int x,int y){
    this.x = x;
    this.y = y;
  }
}
IntPos[] around = {
  new IntPos( 1, 0),
  new IntPos( 0, 1),
  new IntPos(-1, 1),
  new IntPos(-1, 0),
  new IntPos( 0,-1),
  new IntPos( 1,-1)
};

class HexGrid {
  int x = 0;
  int y = 0;
  float r = 10.;
  HexGrid around(int i){
    i %= 6;
    IntPos ipos = around[i];
    return new HexGrid(ipos.x,ipos.y);
  }
  HexGrid(int x, int y) {
    this.x = x;
    this.y = y;
  }
  HexGrid(int x, int y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }
  void setRadius(float r){
    this.r = r;
  }
  void add(HexGrid h){
    this.x += h.x;
    this.y += h.y;
  }
  void add(int x, int y){
    this.x += x;
    this.y += y;
  }

  PVector getPos(){
    PVector u = new PVector(r,0);
    PVector v = new PVector(r/2.,r*sqrt(3)/2.);
    return u.mult(x).add(v.mult(y));
  }
  
}
