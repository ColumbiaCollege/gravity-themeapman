 
float a;
float s =.5;

void setup() {
  size(640, 360);
  stroke(255);
  a = height/2;
}

void draw() {
  background(51);
  line(0, a, width, a);  
  a = a + s;
  s = s +.05;
  if (a < 0) { 
    a = height; 
  }
  if (a >height) { 
    a = 0; 
  }
}
