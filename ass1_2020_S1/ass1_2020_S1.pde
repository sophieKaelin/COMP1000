float w, h, y, speed;
boolean moving;

void setup(){
  size(1280, 720);
  background(240);
  w = width/14.2;
  h = height/8.0;
  speed = (float)height/720.0;
}

void draw(){
  background(240);
  fill(255, 147, 79);
  int steppedPosition = (int)(y /(height/8.0)+0.5);
  rect(0, steppedPosition*h, w, h);
  
  if(moving){
    y = y + speed;
    //IF hit bottom OR top
    if((int)y+h >= height || y <= 0){
      speed *= -1;
      y += speed;
    }
  }
}

void keyPressed(){
 if(key == ' '){
   moving = !moving;
 }
}
