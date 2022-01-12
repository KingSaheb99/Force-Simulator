PVector position, mousePos, force;
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
  
  position = new PVector(width/2, height/2);
}

void draw()
{
  background(255);
  
  ellipse(position.x, position.y, size, size);
  
  position.add(new PVector(0, size * gravity)); //Fg = mg
  
  position.y = constrain(position.y, 0, 1280 - size/2);
  position.x = constrain(position.x, 0, 1920);
  
  mousePos = new PVector(mouseX, mouseY);
  
  forceX = dist(position.x, 0, mousePos.x, 0);
  forceY = dist(0, position.y, 0, mousePos.y);
  
  if(mousePos.x < position.x) forceX = -forceX;
  if(mousePos.y < position.y) forceY = -forceY;
  
  force = new PVector(forceX, forceY);
 
  if(mousePressed)
  {
  position.add(force);
  position.x -= powerLoss;
  position.y += powerLoss;
  
  force.mult(powerLoss);
  
  force = new PVector(0, 0);
  }
}

void mouseReleased()
{/*
  mousePos = new PVector(mouseX, mouseY);
  
  forceX = dist(position.x, 0, mousePos.x, 0);
  forceY = dist(0, position.y, 0, mousePos.y);
  
  if(mousePos.x < position.x) forceX = -forceX;
  if(mousePos.y < position.y) forceY = -forceY;
  
  force = new PVector(forceX, forceY);
  
  position.add(force);
  position.x -= powerLoss;
  position.y += powerLoss;
  
  force.mult(powerLoss);
  
  force = new PVector(0, 0);*/
}
