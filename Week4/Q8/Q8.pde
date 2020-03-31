// Declarations of global variables
float moonX = 0;                             // x-ordinate of centre of moon
float moonY = 0;                             // y-ordinate of centre of moon
int moonAngle = 0;                           // angle, in degrees, of moon position in orbit
float moonAngleRadians = 0;                  // angle, in radians, of moon position in orbit
float orbitWidth = 200;                      // horizontal radius of moon orbit
float orbitHeight = 50;                      // vertical radius of moon orbit

// Setup code, executed once when application started up.
void setup ()
{
  size(500, 500);                            // setup moderately sized windo
  stroke(255);                               // initial stroke colour is white
  frameRate(30);                             // slow down frame rate to 30 frames per second
}

// Draw code, executed once every 1/30th of a second to redraw the animation.
void draw () {
  moonAngle = (frameCount * 2) % 360;               // compute moonAngle from framecount
                                                    // taking the modulus by 360 ensures 0 <= moonAngle < 360
  moonAngleRadians = 2 * PI * moonAngle / 360;      // convert angle to radians (360 degrees = 2*PI radians)
  moonX = orbitWidth * cos(moonAngleRadians) + 250; // compute moon x-ordinate using ellipse formula
  moonY = orbitHeight * sin(moonAngleRadians) + 250;// compute moon y-ordinate using ellipse formula

  background(255);                           // clear window and set its colour to white.
  if ((moonAngle >= 0) && (moonAngle < 180)) // test to see if moon is in the first half of its orbit....
  {                                          // ... if it is draw the planet then draw the moon in front of it. 

    // code to draw the planet at fixed position
    fill(250, 141, 8);
    stroke(255);
    ellipse(250, 250, 250, 250);
    stroke(0);
    noFill();
    arc(250, 250, 250, 90, 0, PI);

    // code to draw the moon centered at (moonX, moonY) 
    stroke(255);
    fill(0, 0, 255);
    ellipse(moonX, moonY, 60, 60);

  } else {                                   // ... if it isn't draw the moon and then draw the planet over it.

    // code to draw the moon centered at (moonX, moonY)
    stroke(255);
    fill(0, 0, 255);
    ellipse(moonX, moonY, 60, 60);

    // code to draw the planet at fixed position
    fill(250, 141, 8);
    stroke(255);
    ellipse(250, 250, 250, 250);
    stroke(0);
    noFill();
    arc(250, 250, 250, 90, 0, PI);

  }
}
