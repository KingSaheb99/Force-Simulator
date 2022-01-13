
Ball ball;

float gravity = 0;
int size = 20;
float forceX, forceY;
float powerLoss = 1.0;

//F = ma
// m = d * v
//Fg = ma
//Fg = (M1 * M2)/a
//a = v/t
//v = d/t

void setup()
{
  size(1920, 1280);
  
  ball = new Ball(width/2, height/2);
}

void draw()
{
  background(255);
  
  line(mouseX, mouseY, ball.position.x, ball.position.y);
}
