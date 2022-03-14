// Global variables 

void setup() 
{
  size(700, 500);
  //fullScreen();
  //Screen size checker 
  //
  //An object Is...... see the class
  Ball myBall = new Ball(); //This line could be anywhere
  Ball yourBall = new Ball();
  //
  myBall.draw( width*1/2, height*1/2, width*1/20, color(30, 200, 5));
  yourBall.draw(width*9/10, height*1/10, width*1/20, color(20, 100, 2));//BUG
  //
  println("Exciting.......not exciting"); //Ball object imediately deleted, because it's a local variable
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{
  //Empty loop
}//End draw()
//
void keyPressed() 
{
  
}//End keypressed()
//
void mousePressed() 
{
  
}//End mousePressed()
//
