class Ball
{
  PVector position, flingPower;
 
  
  Ball(float x, float y)
  {
    position = new PVector(x, y);
    
  }
  
  void update()
  {
    
  }
  
  void mouseReleased()
  {
   flingPower = new PVector(mouseX, mouseY); 
   
   position.add(flingPower); 
   
   flingPower.x -= 0.01;
   flingPower.y += 0.01;
  }
  
  void draw()
  {
    ellipse(position.x, position.y, 50, 50);
  }
  
  void run()
  {
    update();
    draw();
  }
}
