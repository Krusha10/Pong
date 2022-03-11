//int rightGoalScore = 0, leftGoalScore = 0;
//Boolean rightGoal = false, leftGoal = false;

void scoreSetup() {
  textSetup();
}

void scoreDraw() {
  if (rightGoal == true); 
  textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(leftGoalScore), xRightScore, yRightScore, widthScore, heightScore);
  ball();
  if (leftGoal == true);
  textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(rightGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
  
  
}

void win() 
{
  if (rightGoalScore == 5){
     leftWinner();
  }
  if (leftGoalScore == 5){
    rightWinner();
    
  }
}

void scoreBoardRectengle() 
 {
 rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
 rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
 }
