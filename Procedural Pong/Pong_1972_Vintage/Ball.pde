int xMove, yMove; //see population 
Boolean rigthGoalScore = false;

void ball() {
  ballStart();
  ballMove();
}//End ball()

void ballMove() {
  if ( xBall < x1LeftPaddle+widthPaddle+(ballDiameter*1/2) && yBall > y1LeftPaddle && yBall < y1LeftPaddle+heightPaddle ) xMove*=-1;
  if ( xBall >= x1RightPaddle && yBall > y1RightPaddle && yBall < y1RightPaddle+heightPaddle ) xMove*=-1;
  
  if ( xBall >= x1RightNet+(ballDiameter*1/2) ) {
    xBall = width-ballDiameter*1/2;
  } else if ( xBall <= x1LeftNet-(ballDiameter*1/2) ) {
    xBall = (width*0)+(ballDiameter*1/2);
  } else {
    xBall += xMove;
    yBall += yMove;
  }
  //
  if ( yBall<=(height*0)+(ballDiameter*1/2) || yBall>=height-(ballDiameter*1/2) ) yMove*=-1;
  //
}//End ballMove

void ballStart() {
  ellipse(xBall, yBall, ballDiameter, ballDiameter);
}//End ballStart

void paddleContact(){
   if ( xBall<=(x1RightPaddle)+(ballDiameter*1/2) || xBall>=(y1RightPaddle)-(ballDiameter*1/2) ) xMove*=-30;
}
