//int rightGoalScore = 0, leftGoalScore = 0;
//Boolean rightGoal = false, leftGoal = false;

void scoreSetup() {
  textSetup();
}

void scoreDraw() {
  if (rightGoal == true) rightGoalScore = 1; 
  textDraw(height, blueInk, CENTER, CENTER, titleFont, str(rightGoalScore), xRightScore, yRightScore, widthScore, heightScore);
  if (leftGoal == true) leftGoalScore = 1;
  textDraw(height, blueInk, CENTER, CENTER, titleFont, str(leftGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
}

void win() 
{
  if (rightGoalScore == 5);
  rightWinner(); 
  if (leftGoalScore == 5);
  leftWinner();
}

/*void scoreBoardRectengle() 
 {
 rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
 rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
 }
 */
