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
    if(releasing) state = State.SELECTED;
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
    if(downPoint != null && upPoint != null)
      rect(downPoint.x, downPoint.y, upPoint.x- downPoint.x, upPoint.y-downPoint.y);
    
    popStyle();
  }
  PVector downPoint;
  PVector upPoint;

}

RectUI ui;
int x, y;
void setup(){
  size(400,400,OPENGL);
  ui = new RectUI();
  x = y = 10;
}

void draw(){
  clear();
  ui.update();
  rect(x,y,200,300);
  ui.draw();
}
