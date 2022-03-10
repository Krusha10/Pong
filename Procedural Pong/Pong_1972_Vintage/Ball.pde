int xMove, yMove; //see population 
int rightGoalScore=0, leftGoalScore=0;
Boolean rightGoal=false, leftGoal=false;

void ball() {
  //while (rightGoalScore != 5 || leftGoalScore!= 5){
    ballStart();
    ballMove();
  //}
  //paddleContact();
}//End ball()

void ballMove() {
   if ( xBall < x1LeftPaddle+widthPaddle+(ballDiameter*1/2) && yBall > y1LeftPaddle && yBall < y1LeftPaddle+heightPaddle ) xMove *=-1;
   if ( xBall >= x1RightPaddle && yBall > y1RightPaddle && yBall < y1RightPaddle+heightPaddle ) xMove *=-1;
   if ( yBall<=(height*0)+(ballDiameter*1/2) || yBall>=height-(ballDiameter*1/2) ) yMove *= -1;
   //
   if ( xBall >= x1RightNet+(ballDiameter*1/2) ) {
     //xBall = width-ballDiameter*1/2;
     xBall = width*1/2;
     yBall = height*1/2;
     rightGoal = true; 
   } else if ( xBall <= x1LeftNet-(ballDiameter*1/2) ) {
     //xBall = (width*0)+(ballDiameter*1/2);
     xBall = width*1/2;
     yBall = height*1/2;
     leftGoal = true; 
   } else {
     xBall += xMove;
     yBall += yMove;
   }
   
}//End ballMove

void ballStart() {
  fill(#FBFF95);
  ellipse(xBall, yBall, ballDiameter, ballDiameter);
}//End ballStart

/*void paddleContact() {
  if ( xBall<=(x1RightPaddle)-(ballDiameter*1/2) || xBall>=(y1RightPaddle)+(ballDiameter*1/2) ) xMove*=-30;
      xMove = int(random(3, 3));
      yMove = int(random(3, 3));
}
*/
