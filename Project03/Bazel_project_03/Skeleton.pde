//Skeleton will extend Actor
//Kelly Bazel

class Skeleton extends Actor {
  //fields
  //body
  Segment body;
  Segment head;
  Segment neck;
  
  //right side
  Segment ruarm;
  Segment rlowarm;
  Segment rshoulder;
  Segment ruleg;
  Segment rlowleg;
  
  //left side
  Segment luarm;
  Segment llowarm;
  Segment lshoulder;
  Segment luleg;
  Segment llowleg;
  
  
  public Skeleton(float xPos, float yPos) {
    super(xPos, yPos);
    //initialize segments
    body = new Segment(xPos, yPos, -90, 100);
    body.weight = 10;
    body.setPenColor(0, 0, 0);
    
    //right side
    ruleg = new Segment(xPos, yPos, -45, -50);
    ruleg.weight = 10;
    ruleg.setPenColor(150, 150, 150);
    
    rlowleg = new Segment(ruleg.getEndX(), ruleg.getEndY(), 90, 50);
    rlowleg.weight = 10;
    rlowleg.setPenColor(40, 250, 231);
    
    rshoulder = new Segment(body.getEndX(), body.getEndY(), 0, -25);
    rshoulder.weight = 10;
    rshoulder.setPenColor(0, 0, 255);
    
    ruarm = new Segment(rshoulder.getEndX(), rshoulder.getEndY(), 45, -30);
    ruarm.weight = 10;
    ruarm.setPenColor(0, 0, 150);
    
    rlowarm = new Segment(ruarm.getEndX(), ruarm.getEndY(), 45, -25);
    rlowarm.weight = 10;
    rlowarm.setPenColor(255, 0, 0);
    
   
    
    //left side
    luleg = new Segment(xPos, yPos, 45, 50);
    luleg.weight = 10;
    luleg.setPenColor(25, 147, 73);
    
    llowleg = new Segment(luleg.getEndX(), luleg.getEndY(), 90, 50);
    llowleg.weight = 10;
    llowleg.setPenColor(0, 0, 255);
    
    lshoulder = new Segment(body.getEndX(), body.getEndY(), 0, 25);
    lshoulder.weight = 10;
    lshoulder.setPenColor(0, 0, 255);
    
    luarm = new Segment(lshoulder.getEndX(), lshoulder.getEndY(), 45, 30);
    luarm.weight = 10;
    luarm.setPenColor(0, 0, 150);
    
    llowarm = new Segment(luarm.getEndX(), luarm.getEndY(), 45, 25);
    llowarm.weight = 10;
    llowarm.setPenColor(255, 0, 0);
    
    
    //neck
    neck = new Segment(body.getEndX(), body.getEndY(), -90, 50);
    neck.weight = 7;
    neck.setPenColor(0, 255, 0);
    
    //head
    head = new Segment(neck.getEndX(), neck.getEndY(), -90, 1);
    head.weight = 10;
    head.setPenColor(0, 0, 0);
    
    
    
  } //end public Skeleton
  
  public void drawFrame() {
    //call segment.drawLine for parts
    body.drawLine();
    //left side
    luleg.drawLine();
    llowleg.goTo(luleg.getEndX(), luleg.getEndY());
    llowleg.drawLine();
    
    lshoulder.goTo(body.getEndX(), body.getEndY());
    lshoulder.drawLine();
    
    luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
    luarm.drawLine();
    
    llowarm.goTo(luarm.getEndX(), luarm.getEndY());
    llowarm.drawLine();
    
    //right side
    ruleg.drawLine();
    rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
    rlowleg.drawLine();
    
    rshoulder.goTo(body.getEndX(), body.getEndY());
    rshoulder.drawLine();
    
    ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
    ruarm.drawLine();
    
    rlowarm.goTo(ruarm.getEndX(), ruarm.getEndY());
    rlowarm.drawLine();
    
    
    //neck
    neck.goTo(body.getEndX(), body.getEndY());
    neck.drawLine(); 
    
    //head
    head.goTo(neck.getEndX(), neck.getEndY());
    head.drawEllipse();    
    
     
  } //end public void drawFrame
  
  // act() function
  public void act() {
    drawFrame();
    llowarm.turn(7);
    rlowarm.turn(5);
    luleg.turn(1);
    ruleg.turn(1);
    
  } //end public void act
  
} //end Skeleton
