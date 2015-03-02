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
    ellipse(x+12, y-14, 300, 300);
    //nose
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(242, 219, 39);
    triangle(x-10, y-20, x+10, y-20, x+20, y+20);
    //eyes(white)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x-50, y-50, 100, 100);
    //eyes(black)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(0,0,0);
    ellipse(x-50, y-70, 50, 50);
    //eyes(white)1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x-50, y-80, 10, 10);
    //eyes(white)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x+50, y-50, 100, 100);
    //eyes(black)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(0,0,0);
    ellipse(x+50, y-70, 50, 50);
    //eyes(white)2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    ellipse(x+50, y-80, 10, 10);
    //right wing
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(162, 133, 93);
    triangle(x+100, y, x+100, y+110, x+190, y);
    //left wing
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(162, 133, 93);
    triangle(x-80, y, x-80, y+110, x-170, y);
    //eyebrow 1
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    rect(x+40, y-120, 80, 10);
    //eyebrow 2
    stroke(0,0,0);
    strokeWeight(0.5);
    fill(250,250,250);
    rect(x-90, y-120, 80, 10);
  }//end drawEagle
}//end Eagle
