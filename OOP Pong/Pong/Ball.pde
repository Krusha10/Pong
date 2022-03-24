/* Ideas
 change the ball color as game proceeds
 */

class Ball 
{
  //Global variables
  private float xBall, yBall, diameter, xStart, yStart, xDirection, yDirection; 
  private color colour, colourReset = #FFFFFF; 
  private int xSpeed, ySpeed;
  private Boolean nightMode = false, xBallGoal = false;
  //
  //int ballCount = 10; //knows how many instances of Ball there are
  //Not just myBall and yourBall
  //Example of a static variable, don't need an object, true sense of final global variable
  //
  //width*3/4, height*1/2, width*1/35, color(random(0, 255), random(255), random(255)), width/width, height/height
  //width*1/2, height*1/2, width*1/35, color(random(0, 255), random(255), random(255)), width/width, height/height
  private Ball (float widthParameter, float hightParameter) {
    this.xBall = widthParameter*1/2;
    this.yBall = hightParameter*1/2;
    xStart = xBall;//location when game starts 
    yStart = yBall;
    diameter =  width*1/35;
    if (nightMode == false)colour = color(random(0, 255), random(255), random(255));//Hexadecimal: #1EC805
    if (nightMode == true) colour = color(random(0, 255), random(255), 0);
    this.xSpeed = int (random (1, 6));
    this.ySpeed = int (random (1, 6));
    xDirection = 0;
    while (xDirection == 0) {
      this.xDirection = int (random(-3, 3));
    }
    yDirection = 0;
    while (yDirection == 0) {
      this.yDirection = int (random(-3, 3));
    }
  }//End Constructor
  //
  public void draw() {
    fill(colour);
    ellipse(xBall, yBall, diameter, diameter);
    fill(colourReset);
    //
    ballScore();
    //bounceOffPaddle();
  }//End draw
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
      xBallGoal = true;
      if ( xBall < (width*0) + diameter ) {
        xBall = (width*0) + (diameter/4);
        yBall = yBall;
      }//Goal for left player
      if ( xBall > width - diameter ) {
        xBall = (width) - (diameter/4);
        yBall = yBall;
      }//Goal for right player
    }//End Net detection 
    //
    if (xBallGoal == true) {
    } else {
      move();
      bounceBall();
    }
  }//End ballScore
  //Getters and setters
  void xDirectionSetter(int xPaddleRight, int yPaddleRight, int xPaddleLeft, int yPaddleLeft, int paddleHeight, int paddleWidth) {
    if (xBall >= width*3/4) if (yBall >= yPaddleRight && yBall <= yPaddleRight + paddleHeight) if (xBall >= xPaddleRight - diameter) xDirection = xDirection * (-1);
    if (xBall <= width*1/4) if (yBall >= xPaddleLeft && yBall <= yPaddleLeft+ paddleHeight) if (xBall <= xPaddleLeft + paddleWidth + diameter) xDirection = xDirection * (-1);
  }
  /*
  void nightModeKeys() {
   if (key == CODED && key == 'N' || key == 'n') nightMode = true;
   }
   */
}//End Ball
