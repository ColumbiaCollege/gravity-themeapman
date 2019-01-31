// variables for position
float xPos =0;
float yPos =0;
float pos;
float accel =.05;
float speed =1;


// booleans for movement
boolean right = false;
boolean left = false;
boolean down=false;
void setup() {
  //window mods
  size (700, 500);
  background(255);
  pos = height/2;
  //shape origin
  xPos = width/7;
  yPos = height/2;

  noStroke();
  fill(0, 240, 0);
}

void draw() {
  background(0, 0, 0);

  //gravity code
  //if(!keyPressed){
  pos = pos + speed;
  speed = speed + accel;
  if ( pos >400 && accel >=0 ) {
    speed= 0;
    accel =0;
  }

  // update movement
  if (left) {
    xPos = xPos - 1;
  }
  if (right) {
    xPos = xPos + 1;
  }

  //draw shape
  rect(xPos, pos, 20, 20);
  rect(width/100, 430, 2000, 20);
}

void keyPressed() {
  if (key == 'a') {
    left = true;
  }
  if (key == 'd') {
    right = true;
  }
  if (key == ' ') {
  
    accel= -0.5;
  }
}

void keyReleased() {
  if (key == 'a') {
    left = false;
  }


  if (key == 'd') {
    right = false;
  }

  if (key== ' ') {
    speed = 1;
    accel= 0.5;
  }
}
