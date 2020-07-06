PImage img;
int xPos = 200;
int inc = 20;

void setup(){
   img = loadImage("logo.png");
  size(700, 200);
  background(#75FF31);
  image(img, 50, height/2-50, 100, 100);
  strokeWeight(10);
  stroke(0);
  
  smallLine1(xPos);
  longLine1(xPos);
  longLine2(xPos);
  mediumLine1(xPos);
  mediumLine3(xPos);
  longLine2(xPos);
  mediumLine3(xPos);
  mediumLine1(xPos);
  mediumLine1(xPos);
  mediumLine3(xPos);
  mediumLine1(xPos);
  longLine2(xPos);
  mediumLine2(xPos);
  mediumLine2(xPos);
  longLine2(xPos);
  smallLine1(xPos);
  mediumLine3(xPos);
  longLine1(xPos);
  longLine1(xPos);
  smallLine2(xPos);
  mediumLine1(xPos);
  mediumLine1(xPos);
  smallLine1(xPos);
}

void smallLine1(int x){
  line(x, height/2-5,x, + height/2+5);
  xPos += inc;
}

void smallLine2(int x){
  line(x, height/2-10,x, + height/2+10);
  xPos += inc;
}

void mediumLine1(int x){
  line(x, height/2-15,x, + height/2+15);
  xPos += inc;
}

void mediumLine2(int x){
  line(x, height/2-25,x, + height/2+25);
  xPos += inc;
}

void mediumLine3(int x){
  line(x, height/2-30,x, + height/2+30);
  xPos += inc;
}

void longLine1(int x){
  line(x, height/2-40,x, + height/2+40);
  xPos += inc;
}

void longLine2(int x){
  line(x, height/2-45,x, + height/2+45);
  xPos += inc;
}
