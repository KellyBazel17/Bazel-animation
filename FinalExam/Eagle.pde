//Eagle

class Eagle extends Actor {
  //constructor for Eagle
  public Eagle() {
    super();
  }
  
  public Eagle(int xPos, int yPos) {
    super(xPos, yPos);
  }
  
  public void drawEagle() {
    //body
    stroke(0,0,0);
    strokeWeight(1);
    fill(162, 133, 93);
    ellipse(x+12, y-14, 25, 25);
    //nose
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(242, 219, 39);
    triangle(x-1, y-2, x+1, y-2, x+2, y+2);
    //eyes(white)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x-5, y-5, 10, 10);
    //eyes(black)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(0,0,0);
    ellipse(x-5, y-8, 5, 5);
    //eyes(white)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x-5, y-10, 1, 1);
    //eyes(white)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x+5, y-5, 10, 10);
    //eyes(black)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(0,0,0);
    ellipse(x+5, y-8, 5, 5);
    //eyes(white)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x+5, y-10, 1, 1);
    //right wing
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(162, 133, 93);
    triangle(x+8, y-5, x+8, y+7, x+17, y-5);
    //left wing
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(162, 133, 93);
    triangle(x-8, y-5, x-8, y+7, 
