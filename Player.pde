class Player extends GameObject {

  private boolean pushed = false;
  private boolean fired = false;
  
  public Player(int x, int y, int size) {
    super(x, y, size);
  }

  public void beforeUpdate() {
    super.beforeUpdate();
    this.x = mouseX;
    //this.y = mouseY;
    
    if (!fired && !pushed && mousePressed == true){
      pushed = true;
    } 
    if (pushed && mousePressed == false){
      pushed = false;
      fired = false;
    }
    if (!fired && pushed) {
        gm.addGameObject(new Ball(x, y , 25,  0,  -10));
        fired = true;
    }
  }

  public void update() {
    super.update();
    rect(this.x - (this.size/2), this.y - (this.size/2), this.size, this.size);
  }
}
