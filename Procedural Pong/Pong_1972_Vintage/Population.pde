/* Best Practice: same variables are populated on the same line
Varibles should be organized to ease human reading
*/
void population(){
  xBall = width*1/2;
  yBall = height*1/2;
  BallDiameter = width*1/50;
  x2MiddleLine= x1MiddleLine = width*1/2;
  x1LeftPaddle = x2LeftNet = x1LeftNet = width*1/40;
  x2RightNet = x1RightNet = width*39/40;
  y1MiddleLine = y1RightNet = y1LeftNet = height*0;
  y2MiddleLine = y2RightNet = y2LeftNet = height;
  y1RightPaddle = height*1/2; //Too Low
  widthPaddle = width*1/100;
  heightPaddle = height*1/5;
  x1RightPaddle = width*39/40;
  xLeftScore = width*1/4;
  xRightScore = width*3/4;
  yLeftScore = yRightScore = height*0;
  widthScore = width*1/10;
  heightScore = height*1/10;
  //
  y1LeftPaddle = (height*1/2) - (heightPaddle*1/2);
   
} //End population
