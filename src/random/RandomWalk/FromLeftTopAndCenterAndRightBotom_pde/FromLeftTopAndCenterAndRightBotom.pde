int max;

float[] xs;
float[] ys;
float[] vxs;
float[] vys;

void setup() {
  // size(600, 600);
  size(1400, 400);
  
  noStroke();
  fill(255, 50);
  background(0);
  
  max = 500;
  xs = new float[max];
  ys = new float[max];
  vxs = new float[max];
  vys = new float[max];

  for (int i = 0; i < max / 4; i++) {
    // 初期位置
    xs[i] = width / 2;
    ys[i] = height / 2;

    // 初速
    vxs[i] = 0;
    vys[i] = 0;
  }

  for (int i = max - 1; i > max - (max / 5); i--) {
    // 初期位置
    xs[i] = width;
    ys[i] = height;

    // 初速
    vxs[i] = 0;
    vys[i] = 0;
  }
}

void draw() {
  for (int i = 0; i < max; i++) {
    // 速度を位置に反映
    xs[i] += vxs[i];
    ys[i] += vys[i];
  
    // 速度をランダムに変化させる
    vxs[i] += random(-1.0, +1.0) * 2 / 4;
    vys[i] += random(-1.0, +1.0) * 2 / 4;
    
    // 簡易的な空気抵抗を加える
    vxs[i] *= 0.95;
    vys[i] *= 0.95;

    // エージェントを描く
    fill(255, random(50));
    ellipse(xs[i], ys[i], 2, 2);
  }
  
   save("result.png");
}
