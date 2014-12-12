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
  //flower 1 petals
  stroke(0, 0, 255); //blue color outline
  fill(161, 218, 252); //blue color inside
  ellipse(x+3*s, y-10*s, 20, 100);
  ellipse(x+3*s, y-10*s, 100, 20);
  //flower 2 petals
  stroke(247, 15, 166); //dark pink outline
  fill(255, 129, 211); //pink color inside
  ellipse(x-3*s, y-10*s, 20, 100);
  ellipse(x-3*s, y-10*s, 100, 20);
   //flower middle
  stroke(250, 188, 53); //orange outline
  fill(255, 245, 126); //yellow middle 
  ellipse(x+3*s, y-10*s, 25, 25); //middle 1
  ellipse(x-3*s, y-10*s, 25, 25); //middle 2
  //Sun fill
  fill(255, 230, 0);
  arc(0, 0, 100, 100, 0, HALF_PI); 
 // Sun rays
 stroke(250, 188, 53, 100); //transparent rays
 strokeWeight(8);
 fill(255, 245, 126, 0);
 line(20, 60, 40, 80); //ray 1
 line(30, 50, 60, 80); //ray 2
 line(40, 40, 70, 70); //ray 3
 line(50, 30, 80, 60); //ray 4
 line(60, 20, 90, 50); //ray 5
 
} //end drawFlower function

void setup() {
  size(600,400); //canvas
  background(184, 182, 250); //white background
  drawFlower(300, 350, 20);
  
  
  
} // end setup
