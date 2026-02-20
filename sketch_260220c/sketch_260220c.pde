int y1, y2;

void setup() {
  size(600,600);
  y1 = -100;
  y2 = 700;
  strokeWeight(5);
 
}

void draw(){
  background(255);
  ellipse(150, y1, 200, 200);
  ellipse(450, y2, 200, 200);
  y1 = y1+1;
  y2 = y2-1;
  if (y1>700) {
    y1 = -100;
    y2 = 700;
  }
}
