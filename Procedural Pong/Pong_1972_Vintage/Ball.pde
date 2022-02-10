int xMove = 1, yMove = 1;


void ball(){
  ballStart();
  ballMove();
}//End ball()

void ballMove(){
  if(xBall <=(width*0)+(BallDiameter*1/2) || xBall>=width -(BallDiameter*1/2)  ) xMove *=-1;
  if(yBall <=(height*0)+(BallDiameter*1/2) || yBall >= height-(BallDiameter*1/2)  ) yMove *=-1;
  xBall += xMove;
  yBall += yMove;
  goalCheck();
}//End BallMove

void goalCheck() {
  if (xBall >= x1RightNet - (BallDiameter*1/2)  ) xBall = width-BallDiameter*1/2;
}

void ballStart(){
  ellipse(xBall, yBall, BallDiameter, BallDiameter); //Make a ball 
}//End ballStart
