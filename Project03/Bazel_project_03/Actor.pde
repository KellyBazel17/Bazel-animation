// actor class
//Kelly Bazel

class Actor{
  // fields
  float x;
  float y;
  int fillRed = 0;    //colors for Fill
  int fillGreen = 0;
  int fillBlue = 0; 
  int penRed = 0;    //colors for the Pen
  int penGreen = 0;
  int penBlue = 0;
  int wid = 50;
  int hei = 50;
  float dx = 0;
  float dy = 0;
  int size = 25;
  float velocity = 0;
  float directions = 0;
  
  //Constructor 1
  public Actor(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  //Constructor: blank
  public Actor() {
  }
  
  //Set fill and pen color
  void setColor(int r, int g, int b) {
    fillRed = r;
    fillGreen = g;
    fillBlue = b;
  }
  
  void setPenColor(int r, int g, int b) {
    penRed = r;
    penGreen = g;
    penBlue = b;
  } 
  
  //Move and goTo functions
  void move() {
    computeVector();
    x = x + dx;
    y = y + dy;
  }
  
  void goTo(float xPos, float yPos) {
    x = xPos;
    y = yPos;
  }
  
  //bounceEdge
  void bounceEdge() {
    if (x > width || x < 0) {
      //dx = dx * -1;
      directions += 2 *(90 - directions);
    }
    if (y > height || y < 0) {
      //dy = dy * -1;
      directions += 2 * (0 - directions);
    }
  }
  
  //setDX and setDY
  void setDX(int xVel) {
    dx = xVel;
  }
  
  void setDY(int yVel) {
    dy= yVel;
  }
  
  //rectangle function
  void drawRect() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }
  
  //Ellipse function
  void drawEllipse() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, wid, hei);
  } //end drawellipse
  
  //Triangle function
  void drawTriangle() {
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x+wid, y, x+wid, y+hei);
  } //end drawtriangle
  
  public void computeVector() {
    dx = velocity * cos(radians(directions));
    dy = velocity * sin(radians(directions));
    
  }//end compute vector
  
  public void turn(float t) {
    directions += t; //changes direction by t
  } //end turn
  
} //end Actor
