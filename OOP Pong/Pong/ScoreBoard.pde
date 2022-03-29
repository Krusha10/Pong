/* Ideas
 */
/*
class ScoreBoard {
  //Global Variables 
  private int leftScore, rightScore, xRightScore, yRightScore, widthScore, heightScore, xLeftScore, yLeftScore;
  //
  ScoreBoard (int scoreLeft, int scoreRight) {
    leftScore = scoreLeft;
    rightScore = scoreRight;
    widthScore = width*1/10;
    heightScore = height*1/10;
    xRightScore =  (width*3/4) - (widthScore*1/2);
    yRightScore = height*0;
    xLeftScore = (width*1/4) - (widthScore*1/2);
    yLeftScore = height*0;
    //
  }//End Constructor 

  void leftScoreSetter() {
    leftScore++;
  }
  void rightScoreSetter() {
    rightScore++;
  }
  //
  void draw() {
    rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
    rect(xRightScore, yRightScore, widthScore, heightScore);
    textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(rightScore), xLeftScore, yLeftScore, widthScore, heightScore);
    textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(leftScore), xRightScore, yRightScore, widthScore, heightScore);
  }//End draw
  //
  //Entire Text Calculator here (any additional text to the canvas originates here)
  PFont titleFont;
  //
  color darkPinkInk = #D65083;
  color nightModePinkInk = #FF43B1, resetColor = #000000;
  //
  void textSetup()
  {
    titleFont = createFont("Georgia", 50);
  }
  //
  void preDrawText(float height, color ink, int alignHorizontal, int alignVerticle, PFont font) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
  }
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    preDrawText( height, ink, alignHorizontal, alignVerticle, font);
    textSize(textCalculator(height, string, widthRec));  
    text(string, xRect, yRec, widthRec, heightRec);
    textReset();
  }//End textDraw()

  void textReset()
  {
    fill(resetColor); // Ink to default
  }//End textReset()
  //
  float textCalculator(float size, String string, float widthRec) 
  {
    textSize(size);
    while (textWidth(string) > widthRec) 
    {
      size = size * 0.9;
      textSize(size);
    }//End While
    size = size * 0.15; //Additional decrease for Font
    return size;
  }//End textCalculator
  //
  void instructions() {
    String opening = "LET'S PLAY PONG";
    String start = "--Click The Screen And Select Speed For The Paddles--";
    String instructions1 = "* To select speed for left paddle, prees s for slow, r for regular, f for fast ";
    String instructions2 = "* To select speed for right paddle, prees a for slow, b for regular, c for fast ";
    String singlePlayer = "* For single player (Computer VS. Player) : press p and select right paddle speed";
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
    fill(#FF58E3);
    text(rWinner, width/2, 150);
    textSize(30);
    fill(#FF58E3);
    text(rightPlayer, width/2, 200);
  }

  void leftWinner() 
  {
    String lWinner = "WINNER";
    String leftPlayer = "left Player Wins";

    textAlign(CENTER);

    textSize(60);
    fill(#FF9558);
    text(lWinner, width/2, 150);
    textSize(30);
    fill(#FF9558);
    text(leftPlayer, width/2, 200);
  }

  void gameEnds() {
  
    String playAgain = "Press Q to play again";
  
     textAlign(CENTER);

    textSize(40);
    fill(#AE40EA);
    text(playAgain, width/2, 300);
  }
}//End ScoreBoard
*/
