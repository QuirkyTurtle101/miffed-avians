int sizeX = 500;
int sizeY = 300;
float x = 0;
float y;
float a;
float angle = 30;
float e = 100;
float h = 10;

void settings(){
  size(sizeX, sizeY);
}

void draw(){
  
}

void mousePressed(){
  x++;
  graphCalc();
}

void graphCalc(){
  a = tan(((2*PI)/360)*angle);
  y = (-(9.81*1*(1+sq(a)))/(4*e))*sq(x)+a*x+h;
  println(x + ", " + y);
}
