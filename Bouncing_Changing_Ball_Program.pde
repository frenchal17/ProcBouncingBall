float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
float angle = 0.0;
float angle2 = 0.0;

void setup() {
  size(400,400);
  smooth();
  background(255);
}

void draw() {
  angle += .07;
  angle2 += .15;
  noStroke();
  float rd = map(sin(angle),-1,1,0,255);
  float rd2 = map(sin(angle2),-1,1,0,255);
  fill(160,5);
  rect(0,0,width,height);
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(rd,0,rd2);
  ellipse(x,y,25,25);
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

