class Enemy extends GameObject {

  public Enemy(int x, int y, int size) {
    super(x, y, size);
  }
  public void beforeUpdate() {
    super.beforeUpdate();
    this.x = this.x + 1;
    this.y = this.y + 1;
  }

  public void update() {
    super.update();
    ellipse(this.x, this.y, this.size, this.size);
  }
}
