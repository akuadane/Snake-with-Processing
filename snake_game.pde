
Snake snake;

final color backgroundColor = color(255, 255, 255); 
void setup() {
  size(500, 500);
  snake= new Snake(10);
}

void draw() {
  background(backgroundColor);
  snake.drawSnake(-1,0);
}
