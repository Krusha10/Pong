// Global variables 
int ballCount = 10; // Hack for static variable, see Ball class
Ball[] ball = new Ball[ballCount];//Not just array, but an array list, includes code and variables
int ballCounter = ball.length - ball.length;//Way to get 0 using another value
Paddle paddles;
//
void setup() 
{
  size(700, 500);
  //fullScreen();
  //Screen size checker 
  //
  //constructor 
  ball[ballCounter] = new Ball(width, height); //Start he first ball, need ballCounter
  paddles = new Paddle(width, height);
  //Instead of using myBall and yourBall, ball[0]
  //
  ballCounter++;//ballCounter += 1;
  //
  //Paddle();
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  background(#030303);
  paddles.draw();
  for (int i = 0; i < ballCounter; i++) {//Controls each ball of all 10(ballCount)
    ball[i].draw();
  }//End ball.draw
  ballCollisions();
}//End draw()
//
void keyPressed() 
{
  //User defined nightMode, In Ball class, will e referanced to other classes too
  //NightMode might be better as a Static variable
  //Press W-S-D for left paddle
  if (key == CODED && key == 'W' || key == 'w') paddles.setterLeftUp();
  if (key == CODED && key == 'S' || key == 's') paddles.setterLeftDown();
  if (key == CODED && key == 'D' || key == 'd') paddles.setterLeftStop();
  //Press UP-DOWN-LEFT arroes for right paddle
  if (key == CODED && keyCode == UP) paddles.setterRightUp();
  if (key == CODED && keyCode == DOWN) paddles.setterRightDown();
  if (key == CODED && keyCode == LEFT) paddles.setterRightStop();
}//End keypressed()
//
void mousePressed()   
{
  //Easter Egg Example: mouse press to create another ball instantiation 
  if ( ballCounter >= ball.length ) {
    exit(); // Eventually will become an Exit Button
  } else {
    ballCounter++;// ballCounter += 1
  }
  for (int i = ballCounter - 1; i < ballCounter; i++) { //Constructor for other ball objects could be a button
    ball[i] = new Ball(width, height);  
    ball[i].draw();
  }//End Constructor
}//End mousePressed()
//
