public class GameManager {
  ArrayList<GameObject> gameObjects = new ArrayList();

  public GameManager() {
  }

  public void init() {
    println(this.getClass().getName() + "#init");
    gameObjects.add(new Player(mouseX, height  - 100, 50));
    gameObjects.add(new Enemy(10, 10, 50));
    for (int i = 0; i < 10; i++) {
      gameObjects.add(new Ball((int)random(0, width), (int)random(0, height), 50, random(-10, 10), random(-10, 10)));
    }
  }

  public void update() {
    println(this.getClass().getName() + "#update");
    for (GameObject obj : gameObjects) {
      obj.beforeUpdate();
    }

    for (GameObject obj : gameObjects) {
      obj.update();
    }

    for (GameObject obj : gameObjects) {
      obj.afterUpdate();
    }
  }
}
