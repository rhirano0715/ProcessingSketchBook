void setup() {
  // profile
  size(350, 350);
  
  // banner
  // size(1400, 400);

  background(0, 0, 0);
  // background(255, 255, 255);

  // save("result.png");
}

void draw() {
  for (int i = 0; i < random(999); i++) {
    if (i % 2 == 0) {
      fill(255, 255, 255);
    }
    else {
      fill(0, 0, 0);
    }

      ellipse(random(350), random(350), random(1, 2), random(1, 2));
  }  
 
}
