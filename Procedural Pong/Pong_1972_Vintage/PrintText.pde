

void printText1() {
  String opening = "LET'S PLAY PONG";
  String start = "--Click The Screen And Select Speed For The Paddles--";
  String instructions1 = "* To select speed for left paddle, prees s for slow, r for regular, f for fast ";
  String instructions2 = "* To select speed for right paddle, prees a for slow, b for regular, c for fast ";
  String singlePlayer = "* For single player (Computer VS. Player) : press p";
  String screenSaver = "* For screen saver (Computer VS. Computer) : press t";

  //textFont(titleFont);
  textAlign(CENTER);

  textSize(60);
  fill(#62FF80);
  text(opening, width/2, 150);
  textSize(25);
  fill(#FF0E05);
  text(start, width/2, 240);
  textSize(17);
  fill(#FF0E05);
  text(instructions1, width/2, 340);
  text(instructions2, width/2, 370);
  text(singlePlayer, width/2, 400);
  text(screenSaver, width/2, 430);
}

void rightWinner() 
{
  String rWinner = "WINNER";
  String rightPlayer = "Right Player Wins";

  textAlign(CENTER);

  textSize(60);
  fill(#62FF80);
  text(rWinner, width/2, 150);
  textSize(30);
  fill(#62FF80);
  text(rightPlayer, width/2, 170);
}

void leftWinner() 
{
  String lWinner = "WINNER";
  String leftPlayer = "left Player Wins";

  textAlign(CENTER);

  textSize(60);
  fill(#62FF80);
  text(lWinner, width/2, 150);
  textSize(30);
  fill(#62FF80);
  text(leftPlayer, width/2, 170);
}

void gameEnds() {
  
  String goalScore = "You Scored A Goal";
  String playAgain = "Press Q to play again";
  
   textAlign(CENTER);

  textSize(60);
  fill(#62FF80);
  text(goalScore, width/2, 150);
  textSize(30);
  fill(#62FF80);
  text(playAgain, width/2, 170);
}
