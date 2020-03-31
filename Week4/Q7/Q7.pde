void setup() {
  size(256, 256);
  background(249, 182, 94);
}

void draw() {
  
}

void mousePressed() {
  fill(mouseX, mouseY, 0);
  ellipse(mouseX, mouseY, mouseY, mouseY); 
}
