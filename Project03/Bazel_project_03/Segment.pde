//Segment class 
//Will extend Actor

class Segment extends Actor {
  float len; //length 
  float weight = 5; //thinckness
  
  //Constructors
  public Segment(float x, float y) {
    //Call the super
    super(x,y);
    len = size; //default size
  }
  
  public Segment(float x, float y, float d, float s) {
    super(x,y);
    directions = d;
    len = s;
  }
  
  public Segment() {
  }
  
  //Draw line function - do all cool math!
  public void drawLine() {
    //Calculate the end points
    float x2 = x + len * cos(radians(directions));
    float y2 = y + len * sin(radians(directions));
    stroke(penRed, penGreen, penBlue);
    strokeWeight(weight);
    line(x, y, x2, y2);
  }
  
  public float getEndX() {
    float x2 = x + len*cos(radians(directions));
    return x2;
  }
  
  public float getEndY() {
    float y2 = y+len*sin(radians(directions));
    return y2;
  }
  
}
