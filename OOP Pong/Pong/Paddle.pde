/* Ideas 
 Make the paddle change it's colors
 Paddle get's smalled as game proceeds(points increases)
 */
class Paddle 
{ 
  private color colour, whiteColorReset = #000000;
  private int xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle, paddleSpeed, yMove;
  private Boolean nightMode = false;
  private Boolean leftUp = false, rightUp = false, leftDown = false, rightDown = false, leftStop = false, rightStop = false;
  //
  Paddle(float widthParameter, float heightParameter) {
    if (nightMode == false) this.colour = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    if (nightMode == true) this.colour = color(int(random(0, 255)), int(random(0, 255)), 0);
    //Game starts, paddles in the middle
    widthPaddle = int(heightParameter*3/80);
    heightPaddle = int(heightParameter*1/5);
    xLeftPaddle = int(heightParameter*1/40);
    this.yLeftPaddle = int(heightParameter*1/2) - heightPaddle*1/2;
    xRightPaddle = int(widthParameter*39/40) - widthPaddle;
    this.yRightPaddle = yLeftPaddle;
    //Variables to move paddles
    this.leftUp = false; 
    this.rightUp = false;
    this.leftDown = false;
    this.rightDown = false;
    this.leftStop = false;
    this.rightStop = false;
    //Speed Variables
    //paddleSpeed = 3;
    paddleSpeedKeys();
    this.yMove = int((heightParameter / heightParameter) * paddleSpeed);
    //Variables to move the paddles
    //Variables for paddle speed
  }//End Constructor 
  //
  void draw() {
    //playTheGame();
    leftPaddle();
    rightPaddle();
  }
  //
  void leftPaddle() {
    fill(colour);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(whiteColorReset);
    paddleMove();
  }//End leftPaddle
  //
  void rightPaddle() {
    fill(colour);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
    fill(whiteColorReset);
    paddleMove();
  }//End rightPaddle
  //
  void paddleMove() {
    //yLeftPaddle++;
    //yRightPaddle++;
    if (leftUp == true && leftDown == false) {
      yLeftPaddle -= yMove;
      leftStop = false;
    }
    if (leftDown == true && leftUp == false) {
      yLeftPaddle += yMove;
      leftStop = false;
    }
    if (leftStop == true) {
      leftUp = false;
      leftDown = false;
    }
    if (rightUp == true && rightDown == false) {
      yRightPaddle -= yMove;
      rightStop = false;
    }
    if (rightDown == true && rightUp == false) {
      yRightPaddle += yMove;
      rightStop = false;
    }
    if (rightStop == true) {
      rightUp = false;
      rightDown = false;
    }
    //Paddles needs to stop at the top and bottom, otherwise it will go off the screen
    if (yLeftPaddle <= height*0) yLeftPaddle = 0;
    if (yLeftPaddle >= height - heightPaddle) yLeftPaddle = height - heightPaddle;
    if (yRightPaddle <= height*0) yRightPaddle = 0;
    if (yRightPaddle >= height - heightPaddle) yRightPaddle = height - heightPaddle;
  }//End paddleMove
  //
  //IDEAS:
  //
  //void momentumAddToBall() {}//End momentumAddToBall
  //- If the paddle is moving, increase the moment of the ball in the directin of the paddle
  //- If the paddle is stationary, increase the x-axis moment only
  //- ability is controlled in configuration(On or Off)
  //
  //Getter
  //When the ball bounces off the Paddle, randomize the color 20 times (1/3 of a second)
  //
  //setters
  void paddleMoveReset() {
    leftUp = false; 
    rightUp = false;
    leftDown = false;
    rightDown = false;
    leftStop = false;
    rightStop = false;
  }
  //Send paddle location to ball class for collision and bounce
  public void setterLeftUp() {
    paddleMoveReset();
    leftUp = true;
  }
  public void setterLeftDown() {
    paddleMoveReset();
    leftDown = true;
  }
  public void setterLeftStop() {
    paddleMoveReset();
    leftStop = true;
  }
  public void setterRightUp() {
    paddleMoveReset();
    rightUp = true;
  }
  public void setterRightDown() {
    paddleMoveReset();
    rightDown = true;
  }
  public void setterRightStop() {
    paddleMoveReset();
    rightStop = true;
  }
  //
  int xRightPaddleGetter() {
    return xRightPaddle;
  }
  int yRightPaddleGetter() {
    return yRightPaddle;
  }
  int xLeftPaddleGetter() {
    return xLeftPaddle;
  }
  int yLeftPaddleGetter() {
    return yLeftPaddle;
  }
  int heightPaddleGetter() {
    return heightPaddle;
  }
  int widthPaddleGetter() {
    return widthPaddle;
  }
  void paddleSpeedKeys() {
   if (key == CODED && key == 'A' || key == 'a') paddleSpeed = 1;
   if (key == CODED && key == 'B' || key == 'b') paddleSpeed = 3;
   if (key == CODED && key == 'C' || key == 'c') paddleSpeed = 5;
   }
}//End Paddle
