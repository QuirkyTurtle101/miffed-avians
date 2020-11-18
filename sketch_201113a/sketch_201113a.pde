int sizeX = 800;
int sizeY = 600;
float x = 0;
float y;
float a;
float angle = 45;
float e = 1500;
float h = 80;
boolean isAiming = false;

void settings(){
  size(sizeX, sizeY);
}

void draw(){
  clear();
  rect(sizeX/10, sizeY-h, 30, h);
  ellipse(x + sizeX/10 + 15, sizeY-y, 20, 20);
  if(isAiming == true){
    
  } else {
    x++;
    graphCalc();
  }
}

void mousePressed(){
  isAiming = true;
}

void mouseReleased(){
  isAiming = false;
  x = 0;
}

void graphCalc(){
  a = tan(((2*PI)/360)*angle);
  y = (-(9.81*1*(1+sq(a)))/(4*e))*sq(x)+a*x+h;
  println(x + ", " + y); //debug for good measure
}
