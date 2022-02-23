//Global varibles 

void setup() {
  size(500, 600);
  textSetup();
}//End Setup()

void draw() {
  //
  textDraw(height, blueInk, CENTER, CENTER, titleFont, title, titleX, titleY, titleWidth, titleHeight, resetColor); //Left Score
  textDraw(height, blueInk, CENTER, TOP, titleFont, secondTitle, secondX, secondY, secondWidth, secondHeight, resetColor); //Right Score
}//End draw()

void keyPressed() {
  
}//End keyPressed()

void mousePressed() {
  
}//End mousePressed()
