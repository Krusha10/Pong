// Global variables 
final int ballCount = 10; // Hack for static variable, see Ball class
final int numberOfStars = 1;
Ball[] ball = new Ball[ballCount];//Not just array, but an array list, includes code and variables
Ball[] stars = new Ball [numberOfStars];
int ballCounter = ball.length - ball.length;//Way to get 0 using another value
Paddle paddles;
//ScoreBoard score;
Boolean geometryCheck = false, redo = true; 
int appWidth, appHeight;//final variables
int smallerDisplayDimension;//final variables
Boolean nightMode = false;
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
  display();
  starsPopulation();
  //score = new ScoreBoard(0,0); 
  //Instead of using myBall and yourBall, ball[0]
  //
  ballCounter++;//ballCounter += 1;
  //
  /*
  */
  //Paddle();
  //exit(); //Exit button TBA
}//End Setup()
//object is garbege collected here because it's a local variable
//
void draw() 
{ 
  //if (geometryCheck == true) paddles.instructions();
  background(#030303);
  println(" To select speed for paddles, prees s for slow, r for regular, f for fast ");
  println("For single player (Computer VS. Player) : press p and select right paddle speed");
  println("For screen saver (Computer VS. Computer) : press t");
  //score.instructions();
  //if (geometryCheck == false) screenCheck.mediaQuiry(); 
  for (int i = 0; i < ballCounter; i++) {//Controls each ball of all 10(ballCount)
    ball[i].printText();
    paddles.leftPaddlekeyPressed();
    ball[i].drawBall();
    ball[i].xDirectionSetter(paddles.xLeftPaddleGetter(), paddles.yLeftPaddleGetter(), paddles.xRightPaddleGetter(), paddles.yRightPaddleGetter(), paddles.heightPaddleGetter(), paddles.widthPaddleGetter());
    ball[i].scoreSetter (paddles.leftScoreGetter(), paddles.rightScoreGetter());
    paddles.playingModes(ball[i].xBallGetter(), ball[i].yBallGetter());
    //
    //BUG : NEEDS TO BE FIXED : IF STATMENT IS NOT WORKING
    if (ball[i].leftBallGoalGetter() == true ) {
      println("goal");
      paddles.leftScoreSetter(ball[i].leftBallGoalGetter());
      ball[i].xLeftBallGoal = false;
    }
    if (ball[i].rightBallGoalGetter() == true ) {
      println("goal");
      paddles.rightScoreSetter(ball[i].rightBallGoalGetter());
      ball[i].xRightBallGoal = false;
      //rightScoreOff[i] = true;
    }
  }//End ball.draw
  //ballCollisions();
  paddles.draw();
  for (Ball star : stars) {
    star.drawStar();
  }
}//End draw()
//
void keyPressed() 
{
  paddles.leftPaddlekeyPressed();
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
  if (key == CODED && key == 'O' || key == 'o') {
    paddles.paddleMove();
  }
  if (key == CODED && key == 'N' || key == 'n') paddles.nightMode = true;
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
    ball[i].drawBall();
  }//End Constructor
  //
  for (int i = 0; i < stars.length; i++) {
    stars[i].setTargetX(mouseX); //Value of mouse-click
    stars[i].setTargetY(mouseY); //Value of mouse-click
  }//End FOR LOOP
}//End mousePressed()
//
