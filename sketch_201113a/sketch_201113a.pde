int sizeX = 1600;
int sizeY = 600;
float x = 0;
float y;
float a;
float angle = 45;
float e = 1500;
float h = 80;
float velocity = 0;
float m = 30;
boolean isAiming = false;

void settings(){
  size(sizeX, sizeY);
  
}

void draw(){
  clear();
  background(100, 100, 100);
  rect(sizeX/10, sizeY-h, 30, h);
  ellipse(x + sizeX/10 + 15, sizeY-y, 20, 20);
  if(isAiming == true){
    line(mouseX, mouseY, sizeX/10 + 15, sizeY-h);
  } else {
    x+=velocity/10;
    graphCalc();
  }
}

void mousePressed(){
  isAiming = true;
}

/*
c is dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h)
a is abs(mouseY-(sizeY-h))
C is 90
*/

void mouseReleased(){
  angle = degrees(asin(abs(mouseY - (sizeY - h)) / (dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h) / sin(radians(90)))));
  a = tan(((2*PI)/360)*angle);
  e = 50*sq(dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h));
  velocity=(a*sqrt((2*e)/(m*(1+sq(a))))); //this returns some bullshit based on angle, it's 10pm and i can't be fucked to bother
  isAiming = false;
  println(velocity);
  println("a=" + abs(mouseY-(sizeY-h)) + ", c=" + dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h) + ", C = 90");
  println("c=" + degrees(asin(abs(mouseY - (sizeY - h)) / (dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h) / sin(radians(90))))) + ", sin(c)=" + abs(mouseY - (sizeY - h)) / (dist(mouseX, mouseY, sizeX/10 + 15, sizeY-h) / sin(radians(90))));
  x = 0;
}

void graphCalc(){
  y = (-(9.81*m*(1+sq(a)))/(4*e))*sq(x)+a*x+h;
  //println(x + ", " + y); //debug for good measure
}
