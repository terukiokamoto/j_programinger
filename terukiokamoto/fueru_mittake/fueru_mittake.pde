void setup(){
  background(0, 0, 0);
  size(500, 500);
 frameRate(3);
}

void draw(){
  
String[] chat = {"Mittake","Mizuki"};

for (int i = 0; i < chat.length; i++) {
  textSize(random(30, 40));
  text(chat[i], random(width-40), random(height-40)); 
  fill(random(255), random(255), random(255));
}
}