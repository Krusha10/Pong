int xMove, yMove; //see population 
Boolean rigthGoalScore = false;

void ball() {
  ballStart();
  ballMove();
}//End ball()

void ballMove() {
  println(xMove, yMove);
  if ( xBall<=(width*0)+(BallDiameter*1/2) || xBall>=width-(BallDiameter*1/2) ) xMove*=-1;
  if ( yBall<=(height*0)+(BallDiameter*1/2) || yBall>=height-(BallDiameter*1/2) ) yMove*=-1;
  xBall += xMove;
  if (rigthGoalScore==false) yBall += yMove;
  //Stop ball when goal is scored
  goalCheck();
}//End ballMove

void goalCheck() {
  if ( xBall >= x1RightNet-(BallDiameter*1/2) )
  {
    rigthGoalScore = true;
    xBall = width-BallDiameter*1/2;
  }//End rightNet
}//End goalCheck

void ballStart() {
  ellipse(xBall, yBall, BallDiameter, BallDiameter);
}//End ballStart
