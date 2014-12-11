//Kelly Bazel
//Bazel_Project_01

//Define Function
void drawFlower(int x, int y, int s) {
  //pot base
  fill(80, 27, 22); //brown pot color
  quad(x+2*s, y+3*s, x-2*s, y+3*s, x-3*s, y-3*s, x+3*s, y-3*s);
  //pot top
  fill(80, 27, 22); //brown pot top color
  rect(x-3.5*s, y-4*s, 7*s, 1*s); 
  //flower pot leaves
  fill(8, 252, 5); //grean leaves
  triangle(x-1.5*s, y-4*s, x-1.25*s, y-4.5*s, x-1*s, y-4*s); //leaf 1
  triangle(x-1*s, y-4*s, x-.5*s, y-4.75*s, x-0*s, y-4*s); //leaf 2
  triangle(x-0*s, y-4*s, x+.5*s, y-4.75*s, x+1*s, y-4*s); //leaf 3
  triangle(x+1*s, y-4*s, x+1.25*s, y-4.5*s, x+1.5*s, y-4*s); //leaf 4
  //flower stem
  stroke(36, 162, 8); //dark green stroke
  strokeWeight(3); //thickness
  line(x-0*s, y-4*s, x+3*s, y-10*s); //stem 1
  line(x-1*s, y-4*s, x-3*s, y-10*s); //stem 2

} //end drawFlower function

void setup() {
  size(600,400); //canvas
  background(255, 255, 255); //white background
  drawFlower(300, 350, 20);
  
  
  
} // end setup
