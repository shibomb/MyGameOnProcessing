class Ball extends GameObject {
  float xspeed;
  float yspeed;

  public Ball(int x, int y, int size, float xspeed, float yspeed) {
    super(x, y, size);
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }

  public void beforeUpdate() {
    super.beforeUpdate();
    x += xspeed;
    y += yspeed;

    //ボールを跳ね返らせる関数(メソッド)
    if (x > width-(size/2) || x < (size/2)) {
      xspeed *= -1;
    }
    if (y > height-(size/2) || y < (size/2)) {
      yspeed *= -1;
    }
  }

  public void update() {
    super.update();
    fill(234, 159, 217);
    noStroke();
    ellipse(x, y, size, size);
  }
}
