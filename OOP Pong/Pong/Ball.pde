/* Ideas
 change the ball color as game proceeds
 */

class Ball 
{
  //Global variables
  private float xBall, yBall, diameter, xStart, yStart, xDirection, yDirection; 
  private color colour, colourReset = #FFFFFF; 
  private int xSpeed, ySpeed;
  private Boolean nightMode = false;
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
      this.xDirection = int (random(-2, 2));
    }
    yDirection = 0;
    while (yDirection == 0) {
      this.yDirection = int (random(-2, 2));
    }
  }//End Constructor
  //
  private void draw() {
    fill(colour);
    ellipse(xBall, yBall, diameter, diameter);
    fill(colourReset);
    //
    move();
    bounceBall();
    bounceOffPaddle();
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
  private void bounceOffPaddle() {
    //if ( xBall < xLeftPaddle + widthPaddle +(diameter*1/2) && yBall > yLeftPaddle && yBall < yLeftPaddle+ heightPaddle ) xSpeed *=-1;
    //if ( xBall >= xRightPaddle && yBall > y1RightPaddle && yBall < yRightPaddle + heightPaddle ) xSpeed *=-1;
  }//End bounceOffPaddle
  //
  private void ballScore() {
    //Intro to empty IF
    //Ball knows where NET is 
  }//End ballScore
}//End Ball
