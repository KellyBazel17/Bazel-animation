//Kelly Bazel
// Actor Class: Project 02
//Main Class

//Instances of Actor
Actor kelly = new Actor (300, 200);
Actor dana = new Actor (100, 100);
Actor ann = new Actor (200, 200);
Flower kevin = new Flower (300, 300);
Actor test = new Actor (300, 400);
Car racer = new Car (400, 200);

//Rain loop 
//array for rain
Rain rain [] = new Rain [50];

//Setup Function
void setup() {
  size(600,400);
  background(240, 240, 240);
  
  test.velocity = 5;
  test.directions = 45;
  
  //initialize the Rain
  for (int i = 0; i < rain.length; i++) {
    rain[i] = new Rain();
  }
  
  
  //set kelly's values
  kelly.setColor(0, 0, 240); //Blue
  kelly.setPenColor(255, 0, 0); //Red
  kelly.wid = 100;
  kelly.hei = 100;
  kelly.directions = 10;
  kelly.velocity = 10;
  
  //set dana's values
  dana.setColor(0, 255, 0); //green
  dana.wid = 25;
  dana.hei = 25;
  dana.directions = 15;
  dana.velocity = 15;
  
  //set ann's values
  ann.setColor(22, 25, 245);
  ann.wid = 30;
  ann.hei = 40;
  ann.directions = 20;
  ann.velocity= 20;
  
  //set kevin's values
  kevin.wid = 1;
  kevin.hei = 1;
  kevin.directions = 5;
  kevin.velocity = 5;
  
  //set racer's values
  racer.wid = 1;
  racer.hei = 1;
  racer.directions = 3;
  racer.velocity = 3;
  
} //end setup

// draw function
void draw() {
  background(234, 234, 232);
  
  for (int i = 0; i < rain.length; i++) {
    rain[i].act();
  } //end for loop
  
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == LEFT) {
        kevin.directions = -180;
        kevin.move();
      }
      if (keyCode == RIGHT) {
        kevin.directions = 360;
        kevin.move();
      }
      if (keyCode == UP) {
        racer.directions = 90;
        racer.move();
      }
      if (keyCode == DOWN) {
        racer.directions = 270;
        racer.move();
      }
    }
  } //ending the arrow keys
     
  
  kelly.drawRect();
  kelly.move();
  kelly.bounceEdge();
  
  dana.drawRect();
  dana.move();
  dana.bounceEdge();
  
  ann.drawEllipse();
  ann.move();
  ann.bounceEdge();
  
  
 
  kevin.drawFlower();
  
  test.move();
  test.drawEllipse();
  test.turn(5);
  test.bounceEdge();
  
  racer.drawCar();
  
  
  
  
  
} //end draw
