/* Best Practice: same variables are populated on the same line
Varibles should be organized to ease human reading
*/
void population(){
  xBall = width*1/2;
  yBall = height*1/2;
  ballDiameter = width*1/50;
  x2MiddleLine= x1MiddleLine = width*1/2;
  x1LeftPaddle = x2LeftNet = x1LeftNet = width*1/40;
  x2RightNet = x1RightNet = width*39/40;
  yLeftScore = yRightScore = y1MiddleLine = y1RightNet = y1LeftNet = height*0;
  y2MiddleLine = y2RightNet = y2LeftNet = height;
  widthPaddle = width*1/100;
  heightPaddle = height*1/5;
  widthScore = width*1/10;
  heightScore = height*1/10;
  //
  y1LeftPaddle = (height*1/2) - (heightPaddle*1/2);
  y1RightPaddle = (height*1/2)  - (heightPaddle*1/2);
  x1RightPaddle = (width*39/40) - (widthPaddle);
  //
  xLeftScore = (width*1/4) - (widthScore*1/2);
  xRightScore = (width*3/4) - (widthScore*1/2);
  //
  while(xMove==0) xMove = int(random(-2,2));
  while(yMove==0) yMove = int(random(-2,2));
  /*
  while(yMove==0 || yMove==0) {
    xMove = int(random(-2,2));
    yMove = int(random(-2,2));
  }
  */
}//End population
