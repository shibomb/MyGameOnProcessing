class Player extends GameObject {

  public Player(int x, int y, int size) {
    super(x, y, size);
  }

  public void beforeUpdate() {
    super.beforeUpdate();
    this.x = mouseX;
    //this.y = mouseY;
  }

  public void update() {
    super.update();
    rect(this.x - (this.size/2), this.y - (this.size/2), this.size, this.size);
  }
}
