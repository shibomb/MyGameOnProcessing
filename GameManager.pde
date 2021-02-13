public class GameManager {
  ArrayList<GameObject> gameObjects = new ArrayList();
  ArrayList<GameObject> additionalGameObjects = new ArrayList();
  ArrayList<GameObject> removedGameObjects = new ArrayList();

  public GameManager() {
  }

  public void init() {
    println(this.getClass().getName() + "#init");
    gameObjects.add(new Player(mouseX, height  - 100, 50));
    gameObjects.add(new Enemy(10, 10, 50));
    for (int i = 0; i < 10; i++) {
      gameObjects.add(new Ball((int)random(50, width-50), (int)random(50, height-50), 25, random(-10, 10), random(-10, 10)));
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
    
    // 追加・削除されたオブジェクトを整理整頓
    removeObjects();
    addObjects();
  }
  
  public void addGameObject(GameObject obj) {
    additionalGameObjects.add(obj);
  }
  
  public void removeGameObject(GameObject obj) {
    removedGameObjects.add(obj);
  }
  
  private void removeObjects() {
    for (GameObject removeObj : removedGameObjects) {
      gameObjects.remove(removeObj);
    }
    removedGameObjects = new ArrayList();
  }

  private void addObjects() {
    for (GameObject obj : additionalGameObjects) {
      gameObjects.add(obj);
    }
    additionalGameObjects = new ArrayList();
  }
}
