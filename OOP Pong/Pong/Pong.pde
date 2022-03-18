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
  //Instead of using myBall and yourBall, ball[0]
  //
  ballCounter++;//ballCounter += 1;
  //
  paddles = new Paddle(width*1/40, height*1/3, (width*39/40) - (width*1/100), height*1/3, width*1/50, height*1/5);
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  background(#030303);
  for (int i = 0; i < ballCounter; i++) {//Controls each ball of all 10(ballCount)
    ball[i].draw();
  }//End ball.draw
  ballCollisions();
  paddles.draw();
}//End draw()
//
void keyPressed() 
{
  //User defined nightMode, In Ball class, will e referanced to other classes too
  //NightMode might be better as a Static variable
  //Press W-S-D for left paddle
  //Press UP-DOWN-LEFT arroes for right paddle
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
