int xMove, yMove; //see population 
Boolean rigthGoalScore = false;

void ball() {
  ballStart();
  ballMove();
}//End ball()

void ballMove() {
  if ( xBall < x1LeftPaddle+widthPaddle+(BallDiameter*1/2) && yBall > y1LeftPaddle && yBall < y1LeftPaddle+heightPaddle ) xMove*=-1;
  if ( xBall >= x1RightPaddle && yBall > y1RightPaddle && yBall < y1RightPaddle+heightPaddle ) xMove*=-1;
  
  if ( xBall >= x1RightNet+(BallDiameter*1/2) ) {
    xBall = width-BallDiameter*1/2;
  } else if ( xBall <= x1LeftNet-(BallDiameter*1/2) ) {
    xBall = (width*0)+(BallDiameter*1/2);
  } else {
    xBall += xMove;
    yBall += yMove;
  }
  //
  if ( yBall<=(height*0)+(BallDiameter*1/2) || yBall>=height-(BallDiameter*1/2) ) yMove*=-1;
  //
}//End ballMove

void ballStart() {
  ellipse(xBall, yBall, BallDiameter, BallDiameter);
}//End ballStart

void paddleContact(){
   if ( xBall<=(x1RightPaddle)+(BallDiameter*1/2) || xBall>=(y1RightPaddle)-(BallDiameter*1/2) ) xMove*=-30;
}
