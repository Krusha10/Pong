/* Ideas 
 Make the paddle change it's colors
 Paddle get's smalled as game proceeds(points increases)
 */
class Paddle 
{ 
  private color colour, whiteColorReset = #000000;
  private int xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle, yMove;
  private Boolean nightMode = false, leftUp = false, rightUp = false, leftDown = false, rightDown = false, leftStop = false, rightStop = false;
  //
  public Paddle(float widthParameter, float heightParameter) {
    if (nightMode == false) this.colour = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    if (nightMode == true) this.colour = color(int(random(0, 255)), int(random(0, 255)), 0);
    //Game starts, paddles in the middle
    widthPaddle = int(heightParameter*2/80);
    heightPaddle = int(heightParameter*1/4);
    xLeftPaddle = int(heightParameter*1/40);
    this.yLeftPaddle = int(heightParameter*1/2) - heightPaddle*1/2;
    xRightPaddle = int(widthParameter*39/40) - widthPaddle;
    this.yRightPaddle = yLeftPaddle;
    this.leftUp = false;
    this.rightUp = false;
    this.leftDown = false;
    this.rightDown = false;
    this.leftStop = false;
    this.rightStop = false;
    int paddleSpeed = 3;
    this.yMove = int((heightParameter / heightParameter) * paddleSpeed);
    //Variables to move the paddles
    //Variables for paddle speed
  }//End Constructor 
  //
  void draw() {
    playTheGame();
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
  //Paddle movements as Boolean 
  void playTheGame() {
    if ( leftUp == true && leftDown == false ) {
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
    if ( rightUp == true && rightDown == false ) {
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
  }
  void paddleMovements() {
    leftUp = false;
    rightUp = false;
    leftDown = false;
    rightDown = false;
    leftStop = false;
    rightStop = false;
  }
  //KeyBoard Input
  void getterLeftUp() {
    paddleMovements();
    leftUp = true;
  }
  void getterRightUp() {
    paddleMovements();
    rightUp = true;
  }
  void getterLeftDown() {
    paddleMovements();
    leftDown = true;
  }
  void getterRightDown() {
    paddleMovements();
    rightDown = true;
  }
  void getterLeftStop() {
    paddleMovements();
    leftStop = true;
  }
  void getterRightStop() {
    paddleMovements();
    rightStop = true;
  }
  //
  void paddleMove() {
    //Paddles needs to stop at the top and bottom, otherwise it will go off the screen
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
  //When the ball bounces off the addle, randomize the color 20 times (1/3 of a second)
  //
  //setters
  //Send paddle location to ball class for collision and bounce
  //
}//End Paddle
