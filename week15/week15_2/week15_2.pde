void setup() {
  size(640, 360);
}

Ball ball = new Ball(100, 200, 20);

void draw() {
  ball.update(); // 進行
  ball.display();
}
