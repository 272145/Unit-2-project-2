int g;

void setup() {
  size(600,600);
  g=0;
 
}

void draw(){
  background(g);
  ellipse(300,300,200,200);
  g = g+1;
}
