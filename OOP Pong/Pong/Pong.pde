// Global variables 
Ball myBall, yourBall;
Paddle paddles;
//
void setup() 
{
  size(700, 500);
  //fullScreen();
  //Screen size checker 
  //
  //constructor 
  myBall = new Ball(width, height); //This line could be anywhere
  yourBall = new Ball(width, height);
  paddles = new Paddle(width*1/40, height*1/3, (width*39/40) - (width*1/100), height*1/3, width*1/50, height*1/5);
  println("Exciting.......not exciting"); //Ball object imediately deleted, because it's a local variable
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  background(#030303);
  myBall.draw();
  yourBall.draw();
  ballCollisions();
  paddles.draw();
}//End draw()
//
void keyPressed() 
{
  //Press W-S-D for left paddle
  //Press UP-DOWN-LEFT arroes for right paddle
}//End keypressed()
//
void mousePressed() 
{
  
}//End mousePressed()
//
