/**
 * Graphing 2D Equations
 * by Daniel Shiffman. 
 * 
 * Graphics the following equation: 
 * sin(n*cos(r) + 5*theta) 
 * where n is a function of horizontal mouse location.  
 */


 
void setup() {
  // profile
  // size(350, 350);
  
  // banner
  size(1400, 400);

  background(255, 255, 255);
}

void draw() {
  // for (int i = 0; i < random(560000); i++) {
  for (int i = 0; i < random(999999); i++) {
    fill(random(255), random(255), random(255));
    ellipse(random(1400), random(400), random(1, 2), random(1, 2));
  }  
  
  //save("result.png");
}
