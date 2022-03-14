class Ball 
{
  //Global variables
  float xBall, yBall, diameter; 
  color colour; 
  //
  Ball (float xParameter, float yParameter, float diameterParameter, color colourParameter) {
    xBall = xParameter;
    yBall = yParameter;
    diameter = diameterParameter;
    colour = colourParameter;//Hexadecimal: #1EC805
  }//End Constructor
  //
  void draw() {
    fill(colour);
    ellipse(xBall, yBall, diameter, diameter);
  }//End draw
}//End Ball
