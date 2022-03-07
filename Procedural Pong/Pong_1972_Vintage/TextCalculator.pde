//Global variables
PFont titleFont;
color blueInk = #76D1CE;
color nightModePinkInk = #FF43B1, resetColor = #000000;
//
void textSetup()
{
  titleFont = createFont("Georgia", 10);
}

void scoreBoardRectengle() 
{
  rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
  rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
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
  size = size * 0.64; //Additional decrease for Font
  return size;
}//End textCalculator
