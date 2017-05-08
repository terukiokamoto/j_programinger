int diam = 10;
int diam2 = 10;
int diam3 = 10;
float centX, centY;

void setup() {
size(960, 600);
frameRate(24);
smooth();
background(0, 0, 0);
centX = width/2;
centY = height/2;
stroke(0);
strokeWeight(0);
fill(255, 50);
}

void draw() {

if (100 <= diam2&&diam2 <= 280) {
//background(0, 0, 0);
ellipse(centX + 280, centY, diam3 - 100, diam - 100);
}
diam3 += 5;


if (50 <= diam2&&diam2 <= 230) {
//background(0, 0, 0);
ellipse(centX - 280, centY, diam2 - 50, diam2 - 50);
}
diam2 += 5;

if (diam <= 180) {
//background(0, 0, 0);
ellipse(centX, centY, diam, diam);
}
diam += 5;

}