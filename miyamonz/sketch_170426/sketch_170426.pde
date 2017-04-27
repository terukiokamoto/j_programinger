Timer timer = new Timer(200);
ArrayList<Hex> hs = new ArrayList<Hex>();
ArrayList<HexGrid> poses = new ArrayList<HexGrid>();
int index = 0;
int r = 10;
void setup(){
  colorMode(HSB);
  int n = 100;
  for(int i=0; i<n; i++){
    HexGrid g = new HexGrid(0,0,r*2);
    poses.add(g);
    Hex h = new Hex();
    h.c = color(i*255./n,255,255);
    h.x = g.x;
    h.y = g.y;
    h.radius = r;
    hs.add(h);
  }

  timer.setTick( new Visitor(){
      @Override
      public void tick(){
        // Hex old = hs.get((index-1+hs.size())%hs.size());
        int oldIndex = (index+hs.size()-1) %hs.size();
        HexGrid oGrid = poses.get(oldIndex);
        HexGrid nGrid = poses.get(index);
        Hex oh = hs.get(oldIndex);
        Hex nh = hs.get(index);
        oGrid.add(oGrid.around((int)random(6)));
        nGrid.x = oGrid.x;
        nGrid.y = oGrid.y;
        PVector v = oGrid.getPos(); 
        nh.moveTo(v.x,v.y, timer.uTime/3.);
        index = (index+1)%hs.size();
      }
      });
  size(400, 400, OPENGL);
}
PVector hexVector(int n, float r){
  PVector v = new PVector();
  v.x = r * cos(radians(360)*n/6.);
  v.y = r * sin(radians(360)*n/6.);
  return v;
}
void draw(){
  clear();
  timer.draw();
  translate(width/2, width/2);
  line(0,-width, 0,width);
  line(-width, 0,width, 0);
  for(Hex h : hs){
    h.draw();
  }
  

}
