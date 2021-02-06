public class GameManager {
  ArrayList<GameObject> gameObjects = new ArrayList();
  
  public GameManager() {
  }
  
  public void init() {
      println(this.getClass().getName() + "#init");
      gameObjects.add(new Player(mouseX, mouseY, 50));
      gameObjects.add(new Enemy(10, 10, 50));
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
