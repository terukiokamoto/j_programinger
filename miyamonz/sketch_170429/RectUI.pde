enum State {
  NONE,
  SELECTING,
  SELECTED,
}
class RectUI {
  State state;
  RectUI(){
    state = State.NONE;
  }

  boolean oldBtn = false; //false is up 
  boolean btn = false;
  boolean released,pressed, pressing, releasing;
  private void btnUpdate(){
    btn = mousePressed;
    pressing  =  oldBtn &&  btn ;
    released  =  oldBtn && !btn ;
    pressed   = !oldBtn &&  btn ;
    releasing = !oldBtn && !btn ;
    oldBtn = btn;
  }
  private void stateUpdate(){
    if(pressed) state = State.SELECTING;
    if(state == State.SELECTING && releasing) state = State.SELECTED;
  }
  void update(){
    btnUpdate();
    stateUpdate();

    if(pressing)  upPoint = new PVector(mouseX, mouseY);
    if(pressed) {
      upPoint = null;
      downPoint = new PVector(mouseX, mouseY);
    }
    if(released) upPoint =  new PVector(mouseX, mouseY);
  }
  void draw(){
    pushStyle();
    fill(255,0,0);
    if(downPoint != null) ellipse(downPoint.x, downPoint.y,10,10);
    fill(0,0,255);
    if(upPoint != null) ellipse(upPoint.x, upPoint.y,10,10);

    if(state == State.SELECTING) fill(255,100);
    if(state == State.SELECTED) fill(255);
    if(downPoint != null && upPoint != null) {
      Rect area = this.getRect();
      rect(area.x, area.y, area.width, area.height);
    }
    popStyle();
  }
  Rect getRect(){
    if(downPoint == null || upPoint == null) return null;

    float minx = min(upPoint.x, downPoint.x);
    float miny = min(upPoint.y, downPoint.y);
    float w = abs(upPoint.x - downPoint.x);
    float h = abs(upPoint.y - downPoint.y);
    return new Rect(minx, miny, w, h);
  }
  PVector downPoint;
  PVector upPoint;

}
