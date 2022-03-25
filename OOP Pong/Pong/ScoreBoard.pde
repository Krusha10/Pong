/* Ideas
 
 */

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
    titleFont = createFont("Georgia", 55);
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
}//End ScoreBoard
