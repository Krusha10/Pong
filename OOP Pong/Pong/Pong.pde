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
  myBall = new Ball(width*1/2, height*1/2, width*1/20, color(random(0, 255), random(255), random(255)), width/width, height/height); //This line could be anywhere
  yourBall = new Ball(width*3/4, height*1/2, width*1/20, color(random(0, 255), random(255), random(255)), width/width, height/height);
  paddles = new Paddle(width*1/40, height*1/4, (width*39/40) - (width*1/100), height*1/4, width*1/50, height*1/5);
  println("Exciting.......not exciting"); //Ball object imediately deleted, because it's a local variable
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  myBall.draw();
  yourBall.draw();
  if (myBall.xBall == yourBall.xBall) myBall.xSpeed*= -1;
  if (myBall.yBall == yourBall.yBall) myBall.ySpeed*= -1;
  paddles.draw();
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
