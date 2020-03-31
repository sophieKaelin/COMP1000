int circleDiameter = 200;

void setup () {
  size (300, 300);
  background (255);
}

void draw () {
  noStroke ();
  fill (200);
  ellipse (50, 150, 90, 90);
  ellipse (250, 150, 90, 90);

  stroke (0);
  noFill ();
  ellipse (150, 150, 150, 280);  

  fill (100);
  rect (50, 50, 200, 200);

  fill (75);
  ellipse (150, 150, circleDiameter, circleDiameter);
  
  if(circleDiameter > 0) {
    circleDiameter = circleDiameter - 1;
  }
}
