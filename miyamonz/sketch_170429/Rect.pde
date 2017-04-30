class Rect {
  float x,y,width,height;
  Rect(float x,float y, float width, float height){
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  }

  boolean isInside(float x, float y){
    boolean xIn = this.x <= x && x < this.x + this.width;
    boolean yIn = this.y <= y && y < this.y + this.height;
    return xIn && yIn;
  }
}
