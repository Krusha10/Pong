class Paddle 
{ 
  float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
  //
  Paddle(float xLParameter, float yLParameter, float xRParameter, float yRParameter, float wPParameter, float hPParameter){
    xLeftPaddle = xLParameter;
    yLeftPaddle = yLParameter;
    xRightPaddle = xRParameter;
    yRightPaddle = yRParameter;
    widthPaddle = wPParameter;
    heightPaddle = hPParameter;
  }
  //
  void draw() {
    fill(#FF9558);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(#FF58E3);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
  }
}//End Paddle
