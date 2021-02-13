class GameObject {
  protected int x;
  protected int y;
  protected int size;

  public GameObject(int x, int y, int size) {
    //println(this.getClass().getName() + "#GameObject");
    this.x = x;
    this.y = y;
    this.size = size;
  }

  public void beforeUpdate() {
    //println(this.getClass().getName() + "#beforeUpdate");
  }

  public void update() {
    //println(this.getClass().getName() + "#update");

    // 線の色を設定する
    stroke(0, 0, 0, 255);

    // 塗りの色を設定する
    fill(255, 255, 255, 255);
  }

  public void afterUpdate() {
    //println(this.getClass().getName() + "#afterUpdate");
  }
}
