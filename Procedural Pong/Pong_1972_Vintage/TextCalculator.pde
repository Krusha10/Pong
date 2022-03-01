//Global variables
PFont titleFont;
color blueInk = #76D1CE;
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
  textSize(textCalculator(height, widthRec, string));  
  text(string, xRect, yRec, widthRec, heightRec);
  textReset();
}//End textDraw()

void textReset()
{
  fill(resetColor); // Ink to default 
}//End textReset()
//
float textCalculator(float size, float recWidth, String string) 
{
  textSize(size);
  while (textWidth(string) > recWidth) 
  {
    size = size * 0.9;
    textSize(size);
  }//End While
  size = size * 0.64; //Additional decrease for Font
  return size;
}//End textCalculator
