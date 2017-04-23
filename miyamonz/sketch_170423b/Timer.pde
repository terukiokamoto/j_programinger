public interface Visitor {
  public void tick();
}

class Timer {
  public float uTime;
  float oldTime;
  float nextTickTime;
  public int num=0;
  Timer (float _utime) {
    uTime = _utime;
    nextTickTime = uTime;
  }
  Visitor v;
  void setTick(Visitor v){
    this.v = v;
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
    v.tick();
  }
}
