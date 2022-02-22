//Copy over all text lines
//
//Global Variables 
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight;
//
String title = "Wahoo!";
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
  textLayout();
  //
}//End textSetup()
// 
void textLayout() 
{
  rect(titleX, titleY, titleWidth, titleHeight);//Only used for design 
}//End textLayout()
//
void preDrawText() 
{
  fill(blueInk);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 52); //Chnage number untill it fits 
}//End preDrawText()
void textDraw() 
{
  preDrawText();
  text(title, titleX, titleY, titleWidth, titleHeight);
  textReset();
}//End textDraw()
//
void textReset()
{
  fill(resetColor); // Ink to default 
}//End textReset()
