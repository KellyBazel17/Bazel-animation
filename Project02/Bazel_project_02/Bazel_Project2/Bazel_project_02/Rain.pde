// Rain Class

class Rain extends Actor {
  
  public Rain() {
    super();
    x = random(0, width);
    y = random(0, height);
    size = (int)random(3, 10);
    fillBlue = 255;
    velocity = (int)random(5, 10);
    directions = 90;
  }
  
  //Draw the Rain
  public void drawRain() {
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, size, size);
  }
  
  //Actions for each drop
  public void act() {
    drawRain();
    move();
    if (y > height) {
      y = -20;
      dy = (int)random(1, 10);
    }
  }
  
} //end class Rain
