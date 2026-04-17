
float xPos;
float speed = 2;

void setup() {
  size(800, 400);
  smooth();
  xPos = -150; 
}

void draw() {
  background(240);
  float t = frameCount * 0.1;
  xPos += speed;
  if (xPos > width + 150) {
    xPos = -150;
  }
  
  drawPanda(xPos, height/2, t);
}

void drawPanda(float x, float y, float t) {
  pushMatrix();
  translate(x, y);
  
  // Body
  fill(255);
  stroke(0);
  strokeWeight(2);
  ellipse(0, 0, 120, 80);
  
  //head
  ellipse(60, -40, 70, 60);
 //ears
  fill(0);
  ellipse(40, -70, 25, 25);
  ellipse(80, -70, 25, 25);
  //eye patch
  ellipse(50, -40, 20, 25);
  ellipse(70, -40, 20, 25);
  //eyes
  fill(255);
  ellipse(50, -40, 8, 8);
  ellipse(70, -40, 8, 8);
 //nose
  fill(0);
  ellipse(60, -25, 10, 8);
  

  float legSwing = sin(t) * 20;
  float armSwing = sin(t + PI) * 20;
  
  strokeWeight(10);
  strokeCap(ROUND);
  
 
  line(-30, 30, -30 + legSwing, 50);
  line(30, 30, 30 - legSwing, 50);
  
  
  line(20, 0, 20 + armSwing, 20);
  line(60, 0, 60 - armSwing, 20);
  
  popMatrix();
}
