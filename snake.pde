
import java.util.*; 
class Snake {
  private float squareSize;
  ArrayList<float[]> body = new ArrayList<float[]>();

  Snake(float squareSize) {
    this.squareSize=squareSize;
    this.body.add(new float[]{width/2, height/2});
  }


  public void drawSnake(float speedX,float speedY) {
    fill(0);
    for (int i=0; i<body.size(); i++) {
      float x= body.get(i)[0];
      float y= body.get(i)[1];
      rectMode(CENTER);
      rect(x, y, squareSize, squareSize);
      body.get(i)[0]+=speedX;
      body.get(i)[1]+=speedY;
    }
  }
  
  public void addSnakeBlock(){
  
  float x= body.get(body.size()-1)[0];
  float y= body.get(body.size()-1)[1];
  
  body.add( new float[]{x + 3*squareSize/2, y + 3*squareSize/2 });
  }
}
