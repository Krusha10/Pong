/* Ideas
 
 */

class ScoreBoard {
  //Global Variables 
  //
  ScoreBoard () {}//End Constructor 
  //
  void draw() {}//End draw
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
      preDrawText( height,  ink,  alignHorizontal,  alignVerticle, font);
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
