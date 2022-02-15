int xMove, yMove; //see population 
Boolean rigthGoalScore = false;

void ball() {
  ballStart();
  ballMove();
}//End ball()

void ballMove() {
  if ( xBall >= x1RightNet-(BallDiameter*1/2) ) {
    xBall = width-BallDiameter*1/2;
  } else if ( xBall <= x1LeftNet+(BallDiameter*1/2) ) {
    xBall = (width*0)+(BallDiameter*1/2);
  } else {
    xBall += xMove;
    yBall += yMove;
  }
  //
  if ( xBall<=(width*0)+(BallDiameter*1/2) || xBall>=width-(BallDiameter*1/2) ) xMove*=-1;
  if ( yBall<=(height*0)+(BallDiameter*1/2) || yBall>=height-(BallDiameter*1/2) ) yMove*=-1;
  //
}//End ballMove

void ballStart() {
  ellipse(xBall, yBall, BallDiameter, BallDiameter);
}//End ballStart
