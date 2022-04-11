class Ball {
  //Global variables
  private int xBall, yBall, diameter, xMove, yMove, xStart, yStart, xDirection = 0, yDirection = 0; 
  private color colour, colourReset = #FFFFFF; 
  private int xSpeed, ySpeed;
  private Boolean nightMode = false, xLeftBallGoal = false, xRightBallGoal = false;
  //private int NumberOfStars = 5;//version of a ststic variable in pure java, final here
  //Ball[] stars = new Ball [NumberOfStars];//Processing reqires #, pure java allows static variable
  //
  private int appWidth, appHeight;//final variables
  private int smallerDisplayDimension;//final variables
  //
  private Boolean redo = true;
  //
  //int ballCount = 10; //knows how many instances of Ball there are
  //Not just myBall and yourBall
  //Example of a static variable, don't need an object, true sense of final global variable
  //
  //width*3/4, height*1/2, width*1/35, color(random(0, 255), random(255), random(255)), width/width, height/height
  //width*1/2, height*1/2, width*1/35, color(random(0, 255), random(255), random(255)), width/width, height/height
  private Ball (float widthParameter, float hightParameter) {
    this.xBall = int(widthParameter*1/2);
    this.yBall = int(hightParameter*1/2);
    xStart = xBall;//location when game starts 
    yStart = yBall;
    this.xLeftBallGoal = false;
    this.xRightBallGoal = false;
    diameter =  width*1/35;
    if (nightMode == false) colour = color(random(0, 255), random(255), random(255));//Hexadecimal: #1EC805
    if (nightMode == true) colour = color(random(0, 255), random(255), 0);
    this.xSpeed = int (random (1, 6));
    this.ySpeed = int (random (1, 6));
    //xDirection = 0;
    while (xDirection == 0) xDirection = int(random(-2, 2));
    //yDirection = 0;
    while (yDirection == 0) yDirection = int(random(-2, 2));
  }//End Constructor
  //
  //Star Constructor 
  //Requires modifiers
  Ball (float diameterParameter, float widthParameter, float heightParameter) {
    //THIS is not used here
    xBall = int (widthParameter);//Casting here - truncating decimals
    yBall = int (heightParameter);
    diameter = int (diameterParameter);
    colour = (nightMode == false) ? color( random(0, 255), random(255), random(255) ) : color( random(0, 255), random(255), random(0, 40));
    appWidth = width;// switch to displayWidth if using fullScreen()
    appHeight = height;// switch to displayHeight if using fullScreen()
    smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
  }//Constructor 
  //
  /*
  public void star() {
    while (redo == true) { 
      for (int i = 0; i < stars.length; i++) {//Read entire object array
        //Randomly choose paranmeters
        float randomDiameter = random (smallerDisplayDimension*1/10, smallerDisplayDimension*1/5);//Consider user input
        float randomX = random (0 + randomDiameter*1/2, appWidth - randomDiameter*1/2);//No stars in net(boundry)
        float randomY = random (0 + randomDiameter*1/2, appHeight - randomDiameter*1/2); // Entire appHeight OK
        stars[i] = new Ball(randomDiameter, randomX, randomY);
        int j = i;
        //
        while (j >= 0) {
          if ( randomX - randomDiameter*1/2 > stars[j].xBall && randomX +randomDiameter*1/2 < stars[j].xBall) {
            randomX = random ( randomDiameter*1/2, appWidth - randomDiameter*1/2);
          }//End WHILE-X
          j--;
        }
        //
        stars[i] = new Ball(randomDiameter, randomX, randomY);
        //
        j = i;
        while (j >= 0) {
          if (randomY - randomDiameter*1/2 > stars[j].yBall && randomY + randomDiameter*1/2 < stars[j].yBall ) {
            randomY = random (randomDiameter*1/2, appHeight - randomDiameter*1/2);
          }//End IF
          j--;
        }//End WHILE
        stars[i] = new Ball(randomDiameter, randomX, randomY);
      }//End For population
      redo = false;
      //
      for (int i = 0; i < stars.length; i++) {
        for (int j = stars.length - 1; j > i; j--) {
          if (stars[i].xBall + stars[i].diameter < stars[j].xBall && stars[j].xBall- stars[j].diameter > stars[i].xBall) redo = true;
          if (stars[i].yBall + stars[i].diameter < stars[j].yBall && stars[j].yBall- stars[j].diameter > stars[i].yBall) redo = true;
        }
      }
    }//End WHILE
  }
  */
  //
  public void drawBall() {
    balldraw();
  }
  public void drawStar() {
    //star();
    balldraw();
  }
  public void balldraw() {
    fill(colour);
    ellipse(xBall, yBall, diameter, diameter);
    fill(colourReset);
    //
    //ballScore();
    //move();
    //bounceBall();
    //bounceOffPaddle();
  }//End draw
  //
  //
  private void move() {
    xBall += xSpeed;
    yBall += ySpeed;
  }//End move
  //
  private void bounceBall() { //Not A Bounce Off Paddles
    if (xBall - diameter*1/2 < width*0 || xBall + diameter*1/2 > width) xSpeed *= -1;
    if (yBall - diameter*1/2 < height*0 || yBall + diameter*1/2 > height) ySpeed *= -1;
  }//End Bounce
  //
  private void ballScore() {
    //Intro to empty IF
    //Ball knows where NET is 
    if ( xBall < (width*0) + diameter || xBall > width - diameter ) { //Net detection
      if ( xBall < (width*0) + diameter) {
        xLeftBallGoal = true;
        xBall = width*1/2;
        yBall = height*1/2;
      }//Goal for left player
      if ( xBall > width - diameter) {
        xRightBallGoal = true;
        xBall = width*1/2;
        yBall = height*1/2;
      }//Goal for right player
    }//End Net detection 
    if (xLeftBallGoal == true || xRightBallGoal == true) {
      move();
      bounceBall();
      //ballScore();
    } else {
      //xMove = xSpeed*xDirection;
      //yMove = ySpeed*yDirection;
      //xBall += xMove;
      //yBall += yMove;
      move();
      bounceBall();
      //ballScore();
    }
    //
  }//End ballScore
  //Getters and setters
  int xBallGetter() {
    return xBall;
  }//End ballXGetter
  int yBallGetter() {
    return yBall;
  }//End ballYGetter
  Boolean leftBallGoalGetter() {
    return xLeftBallGoal;
  }
  Boolean rightBallGoalGetter() {
    return xRightBallGoal;
  }
  void xDirectionSetter( int xPaddleLeft, int yPaddleLeft, int xPaddleRight, int yPaddleRight, int paddleHeight, int paddleWidth) {
    //println( xPaddleLeft, yPaddleLeft, xPaddleRight, yPaddleRight, paddleHeight, paddleWidth);
    //if (xBall <= width*1/4) if (yBall >= xPaddleLeft && yBall <= yPaddleLeft+ paddleHeight) if (xBall <= xPaddleLeft + paddleWidth + diameter) xSpeed *= (-1);
    if ( xBall < xPaddleLeft + paddleWidth + (diameter*1/2) && yBall > yPaddleLeft && yBall < yPaddleLeft+paddleHeight ) xSpeed *= -1;
    if ( xBall >= xPaddleRight && yBall > yPaddleRight && yBall < yPaddleRight+paddleHeight ) xSpeed *=-1;
    //if (xBall >= width*3/4) if (yBall >= yPaddleRight && yBall <= yPaddleRight + paddleHeight) if (xBall >= xPaddleRight - diameter) xSpeed *= (-1);
  }
  //
  /*
  void scoreSetter(int scoreLeft, int scoreRight) {
   if (scoreLeft == 5 || scoreRight == 5) {
   if (scoreRight == 5) {
   background(colour);
   paddles.paddleMoveReset();
   xSpeed = 0;
   ySpeed = 0;
   textAlign(CENTER);
   textSize(width*1/30);
   fill(#FF9558);
   text("WINNER", width/2, width*1/5);
   fill(#FF9558);
   text("LEFT PLAYER WINS!", width/2, width*1/4);
   scoreLeft = 0;
   }
   if (scoreLeft == 5) {
   background(colour);
   paddles.paddleMoveReset();
   xSpeed = 0;
   ySpeed = 0;
   textAlign(CENTER);
   textSize(width*1/30);
   fill(#FF9558);
   text("WINNER", width/2, width*1/5);
   fill(#FF9558);
   text("RIGHT PLAYER WINS!", width/2, width*1/4);
   scoreRight = 0;
   }
   }
   }
   */
}//End Ball
