float x = -60;   // spider start position
float speed = 2; // movement speed

void setup() {
  size(800, 400);
}

void draw() {
  background(255); // dark background
  
  drawSpider(x, height/2);
  
  x += speed; // move right
  
  // reset when it goes off screen
  if (x > width + 60) {
    x = -60;
  }
}

void drawSpider(float x, float y) {
  
  stroke(0);
  strokeWeight(3);
  
  // legs (4 each side)
  for (int i = -2; i <= 2; i++) {
    if (i != 0) {
      line(x-10, y, x-40, y + i*15);
      line(x+10, y, x+40, y + i*15);
    }
  }
  
  // body
  fill(0);
  ellipse(x, y, 30, 30);
  
  // head
  ellipse(x+20, y, 18, 18);
  
  // eyes
  fill(255);
  ellipse(x+23, y-3, 4, 4);
  ellipse(x+23, y+3, 4, 4);
}
