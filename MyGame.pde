GameManager gm;

void setup() {
  println("setup");
  
  // キャンバス
  size(640, 640);    
  frameRate(60);   
  background(0); 
  
  // ゲームマネージャー
  println("setup");
  gm = new GameManager();
  gm.init();
}

void draw() {
  println("draw");
  // 画面全体をリフレッシュ
  fill(0,0,0,255);
  rect(0,0, width, height);  
  
  // アップデート
  gm.update();
}
