void ballCollisions() {
  if (myBall.xBall == yourBall.xBall) myBall.xSpeed*= -1;
  if (myBall.yBall == yourBall.yBall) myBall.ySpeed*= -1;
}//End ballCollisions
