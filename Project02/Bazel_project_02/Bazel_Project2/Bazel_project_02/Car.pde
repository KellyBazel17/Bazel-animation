//New Actor
//Car

class Car extends Actor {
  
  //constructor for car
  public Car() {
    super(); //calls Actor constructor
  }
  
  public Car(int xPos, int yPos) {
    super(xPos, yPos);
  }
  
  public void drawCar() {
    //body
    stroke(0, 0, 0);
    strokeWeight(1);
    fill(200, 255, 100);
    rect(x, y, 100, 35);
    //wheels
    fill(0, 0, 0);
    ellipse(x+25, y+35, 25, 25);
    ellipse(x+75, y+35, 25, 25);
    //roof
    fill(155, 10, 247);
    quad(x+25, y, x+35, y-35, x+65, y-35, x+75, y);
  }
} //end class car
