// Global variables 
final int ballCount = 10; // Hack for static variable, see Ball class
Ball[] ball = new Ball[ballCount];//Not just array, but an array list, includes code and variables
int ballCounter = ball.length - ball.length;//Way to get 0 using another value
Paddle paddles;
//ScoreBoard score;
Boolean geometryCheck = false; 
private Boolean[] leftScoreOff = new Boolean[ball.length];
private Boolean[] rightScoreOff = new Boolean[ball.length];
//
void setup() 
{
  size(700, 500);
  //fullScreen();
  //Screen size checker 
  //
  //constructor
  //
  ball[ballCounter] = new Ball(width, height); //Start he first ball, need ballCounter
  paddles = new Paddle(width, height);
  if (geometryCheck == false) paddles.mediaQuiry();
  paddles.textSetup();
  //score = new ScoreBoard(0,0); 
  //Instead of using myBall and yourBall, ball[0]
  //
  ballCounter++;//ballCounter += 1;
  //
  for (int i=0; i<ball.length; i++) {
    leftScoreOff[i] = false;
    rightScoreOff[i] = false;
  }
  //Paddle();
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  background(#030303);
  //score.instructions();
  //if (geometryCheck == false) screenCheck.mediaQuiry(); 
  for (int i = 0; i < ballCounter; i++) {//Controls each ball of all 10(ballCount)
    paddles.leftPaddlekeyPressed();
    ball[i].draw();
    ball[i].xDirectionSetter(paddles.xLeftPaddleGetter(), paddles.yLeftPaddleGetter(), paddles.xRightPaddleGetter(), paddles.yRightPaddleGetter(), paddles.heightPaddleGetter(), paddles.widthPaddleGetter());
    ball[i].scoreSetter (paddles.leftScoreGetter(), paddles.rightScoreGetter());
    paddles.playingModes(ball[i].xBallGetter(),ball[i].yBallGetter());
    //
    if (ball[i].leftBallGoalGetter() == true && leftScoreOff[i] == false) {
      paddles.leftScoreSetter();
      leftScoreOff[i] = true;
    }
    if (ball[i].rightBallGoalGetter() == true && rightScoreOff[i] == false) {
      paddles.rightScoreSetter();
      rightScoreOff[i] = true;
    }
  }//End ball.draw
  //ballCollisions();
  paddles.draw();
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
