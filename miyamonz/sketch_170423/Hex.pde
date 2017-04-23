class Hex {
  public color c;
  public float radius = 10;
  public float x = 0;
  public float y = 0;
  public float rot = 0;

  public Hex(){}

  PVector from;
  PVector to;
  float startAt;
  float moveTime;
  void moveTo(float x, float y, float t){
    from = new PVector(this.x,this.y);
    to = new PVector(x,y);
    startAt = millis();
    moveTime = t;

  }
  void update(){
    float e = millis() - startAt;
    float param = e / moveTime;
    if(param >= 1.){
      x = to.x;
      y = to.y;
      return;
    } 
    PVector n = to.copy().sub(from).mult(param);
    n.add(from);
    x = n.x;
    y = n.y;
  }
  void draw(){
    update();
    pushStyle();
    pushMatrix();
    translate(x,y);
    rotate(rot);
    fill(c);
    polygon(0,0,radius, 6);
    popMatrix();
    popStyle();
  }

}
