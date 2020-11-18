int sizeX = 800;
int sizeY = 600;
float x = 0;
float y;
float a;
float angle = 45;
float e = 1000;
float h = 80;

void settings(){
  size(sizeX, sizeY);
}

void draw(){
  clear();
  rect(sizeX/10, sizeY-h, 30, h);
  ellipse(x + sizeX/10 + 15, sizeY-y, 20, 20);
}

void mousePressed(){
  x++;
  graphCalc();
}

void graphCalc(){
  a = tan(((2*PI)/360)*angle);
  y = (-(9.81*1*(1+sq(a)))/(4*e))*sq(x)+a*x+h;
  println(x + ", " + y); //debug for good measure
}
