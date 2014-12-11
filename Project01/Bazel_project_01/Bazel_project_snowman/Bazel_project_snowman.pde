// Kelly Bazel
// Project 01

//Define Function
void drawSnowman(int x, int y, int s) {
  fill(240,240,240); //whitish color 
  //low
  ellipse(x, y+6*s, 11*s, 11*s);
  //mid
  ellipse(x, y, 8*s, 8*s);  //how large or small it is multiplying
  //head
  ellipse(x, y-5*s, 6*s, 6*s);
  //right eye
  fill(0, 0, 0); //black eye
  ellipse(x-1*s, y-6*s, 1*s, 1*s);
  //left eye
  ellipse(x+1*s, y-6*s, 1*s, 1*s); //black eye
  //nose
  fill(247,279,75); //orange nose
  triangle(x+.5*s, y-5*s, x+.5*s, y-4.5*s, x+1.5*s, y-4*s);
  // Hat 
  fill(100, 97, 91); //gray hat
  rect(x-1.5*s, y-11.5*s, 3*s, 3*s);
  rect(x-3*s, y-8.5*s, 6*s, 1*s);
  //mouth
  fill(240,240,240);
  arc(x, y-4*s, 4*s, 2*s, 0, PI);
}

void setup() {
  size(600,400); // canvas
  background(88,178,255);
  drawSnowman(300, 200, 10);
  drawSnowman(400, 200, 5);
  
} // end setup


