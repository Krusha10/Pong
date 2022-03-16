/* Ideas 
  Make the paddle change it's colors
  Paddle get's smalled as game proceeds(points increases)
*/
class Paddle 
{ 
  float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
  //
  Paddle(float xLParameter, float yLParameter, float xRParameter, float yRParameter, float wPParameter, float hPParameter)
  {
    //Game starts, paddles in the middle
    xLeftPaddle = xLParameter;
    yLeftPaddle = yLParameter;
    xRightPaddle = xRParameter;
    yRightPaddle = yRParameter;
    widthPaddle = wPParameter;
    heightPaddle = hPParameter;
  }//End Constructor 
  //
  void draw() {
    fill(#FF9558);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(#FF58E3);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
  }
  //
  void leftPaddle() {
    paddleMove();
  }//End leftPaddle
  //
  void rightPaddle() {
    paddleMove();
  }//End rightPaddle
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
