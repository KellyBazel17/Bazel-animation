//Project 03
//Kelly Bazel

//instances of segment
//Segment arm = new Segment(300, 200, -90, 100);

//instances of skeleton
Skeleton mySkeleton = new Skeleton(300, 300);

//setup
void setup() {
  size(600, 400);
  background(240, 240, 240);
  
  //arm.weight = 10;
  //arm.setPenColor(255, 0, 0);
} //end setup

//draw
void draw() {
  background(233, 220, 237);
  
  mySkeleton.act();
  
  //arm.drawLine();
} //end draw
