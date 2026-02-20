int x, y;

void setup() {
  size(600,600);
  x=0;
  y=0;
  strokeWeight(5);
 
}

void draw(){
  background(255);
  ellipse(300,y,200,200);
  y =y +1;
  x= x+1;
  if (y > 700) {
    y = -100;
  }
}
