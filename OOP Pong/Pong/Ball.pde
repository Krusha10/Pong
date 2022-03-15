class Ball 
{
  //Global variables
  float xBall, yBall, diameter; 
  color colour; 
  int xSpeed, ySpeed;
  //
  Ball (float xParameter, float yParameter, float diameterParameter, color colourParameter, int xSpeedParameter, int ySpeedParameter) {
    xBall = xParameter;
    yBall = yParameter;
    diameter = diameterParameter;
    colour = colourParameter;//Hexadecimal: #1EC805
    xSpeed = xSpeedParameter;
    ySpeed = ySpeedParameter;
  }//End Constructor
  //
  void draw() {
    fill(colour);
    ellipse(xBall, yBall, diameter, diameter);
    move();
    bounceBall();
  }//End draw
  //
  void move() {
    xBall += xSpeed;
    yBall += ySpeed;
  }//End move
  //
  void bounceBall() { //Not A Bounce Off Paddles
    if (xBall - diameter*1/2 < width*0 || xBall + diameter*1/2 > width) xSpeed *= -1;
    if (yBall - diameter*1/2 < height*0 || yBall + diameter*1/2 > height) ySpeed *= -1;
  }
}//End Ball
