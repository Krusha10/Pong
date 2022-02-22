//Global varibles 
PFont titleFont;
int titleX, titleY, titleWidth, titleHeight;
//
String title = "Wahoo!";
color blueInk = #76D1CE;
color nightModePinkInk = #FF43B1;
color resetColor = #000000;
//
void setup() {
  /*
  println("Start of console");
  String[] fontList = PFont.list(); 
  //fontList - local variable, garbaged 
  printArray(fontList);
  */
  titleFont = createFont("Georgia", 55);
  size(500, 600);
  //populating variables 
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
}//End Setup()

void draw() {
  rect(titleX, titleY, titleWidth, titleHeight);
  //
  fill(blueInk);
  textAlign(CENTER, CENTER);
  textFont(titleFont, 52); //Chnage number untill it fits
  text(title, titleX, titleY, titleWidth, titleHeight);
  fill(resetColor); // Ink to default 
}//End draw()

void keyPressed() {}//End keyPressed()

void mousePressed() {}//End mousePressed()
