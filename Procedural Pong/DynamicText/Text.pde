//Copy over all text lines
//
//Global Variables 
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight, secondX, secondY, secondWidth, secondHeight;
//
String title = "Wahoo!", secondTitle = "Hello World";
color blueInk = #76D1CE;
color nightModePinkInk = #FF43B1;
color resetColor = #000000;
//
void textSetup() 
{
   /*
  println("Start of console");
  String[] fontList = PFont.list(); 
  //fontList - local variable, garbaged 
  printArray(fontList);
  */
  titleFont = createFont("Georgia", 55);
  //populating variables 
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  secondX = width*1/5;
  secondY = height*3/10;
  secondWidth = width*3/5;
  secondHeight = height*1/10;
  textLayout();
  //
}//End textSetup()
// 
void textLayout() 
{
  rect(titleX, titleY, titleWidth, titleHeight);//Only used for design 
  rect(secondX, secondY, secondWidth, secondHeight);
}//End textLayout()
//
void preDrawText(float height, color ink, int alignHorizontal, int alignVerticle, PFont font) 
{
  fill(ink);
  textAlign(alignHorizontal, alignVerticle);
  textFont(font, height); //52 //Chnage number untill it fits 
}//End preDrawText()
void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec, color resetColor) 
{
  preDrawText( height,  ink,  alignHorizontal,  alignVerticle, font);
  textSize(textCalculator(height, widthRec, string)); //height is wrong// 
  text(string, xRect, yRec, widthRec, heightRec);
  textReset(resetColor);
}//End textDraw()
//
void textReset(color resetColor)
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
