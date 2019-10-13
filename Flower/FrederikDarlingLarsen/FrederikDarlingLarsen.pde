//float r=30;
float ballX;
float ballY;
boolean change = false;

float x=100;
float y=100;
boolean wall = false;

float xS = 2;
float yS = 1;

float pSize = 50;
float cSize =70;

void setup() {
  size(600, 600);
  // background(#43AF76);
}

void draw() {
  background(#43AF76);
  // frameRate(5);

  //float x=random(5);
  // float y=random(5);


  color gray1 = 170;
  color gray2 = 120;



  flower(x, y, 8, pSize, cSize, gray1, gray2);
  move(xS, yS);
  bounce();
}

//Flower function with parmeters
void flower (float x, float y, int pedals, float pSize, float cSize, color ped, color cen ) {

  //color for pedals are chosen and pedals are drawn using a for loop.
  fill(ped);
  for (float i=0; i<PI*2; i+=2*PI/pedals) {
    //float ballX=width/2 + r*cos(i);
    // float ballY=height/2 + r*sin(i);

    float ballX=pSize*cos(i);
    float ballY=pSize*sin(i);
    ellipse(x+ballX, y+ballY, pSize, pSize);
  }
  //color is chosen for center and center is drawn 
  fill(cen);
  //  ellipse(x+width/2,y+height/2,r*1.2,r*1.2);
  ellipse(x, y, cSize*1.2, cSize*1.2);
}

//Movement function with parameters for the speed along both axies.
void move(float xS, float yS ) {

  x = x+xS;
  y = y+yS;

  if (x < 0 || x> width-90) {
    xS *= -1;
    yS *= -1;
    println(x, y);
  }
}

//Bounce function
void bounce() {

  // if-statement that makes the flower bounce along the sides
  if (x < 0 +pSize + cSize/2|| x > width -pSize - cSize/2) {

    xS *= -1;
  }
  // if-statement that makes the flower bounce along the top and bottom
  if (y < 0 +pSize + cSize/2|| y > height-pSize - cSize/2) {

    yS *= -1;
  }
}

/*
 Changes
 
 1. Different number of pedals 
 2. Different value for pedals 
 3. Differnt value for center
 4. gray pedals
 5. gray center
 6. different size
 */
