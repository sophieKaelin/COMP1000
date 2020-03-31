int x = mouseX;
int y = mouseY;

void setup() {
  size(500,500);
  background(255);
}

void draw() {
  background(255);
  noStroke();
  ellipse(x, y, 150, 150);
  y+=1;
}

void mouseClicked() {
  background(255);
  fill(0, 255, 0);
  x = mouseX;
  y = mouseY;
}
