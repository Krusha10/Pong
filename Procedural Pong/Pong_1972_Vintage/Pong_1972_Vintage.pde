//Global Variables
float xBall, yBall, ballDiameter; 
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
float x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle, x1RightPaddle, y1RightPaddle;
float xLeftScore, yLeftScore, widthScore, heightScore, xRightScore, yRightScore;
Boolean geometryCheck = false, restart = false;
PImage bckgroundImage; 
int y;

void setup() {
  fullScreen();
  //Geomtery Communication and Variables for GUI Ratios
  //size(700, 500); //Landscape-orientation
  /*int widthRatio = displayWidth;
   int heightRatio = displayHeight;
   fullScreen(widthRatio, heightRatio);
   widthRatio = width;
   heightRatio = height;
   if (widthRatio > displayWidth) widthRatio = displayWidth;
   if (heightRatio > displayHeight) heightRatio = displayHeight;
   */
  mediaQuiry();
  population(); //One purpose of developer-written function
}//End setup

void draw() {
  background(#00ACED);
  if (geometryCheck == false) mediaQuiry();
  //
  if (leftPaddleSpeed > 0 && rightPaddleSpeed > 0) {
    if (rightGoal == true || leftGoal == true) {
      resetGame();
    } else {
      if (restart == false) StartGame();
    }
  } else {
    printText1();
  }
}//End draw

void keyPressed() {
  //right paddle - arrow keys
  rightPaddlekeyPressed();
  leftPaddlekeyPressed();
  if (key == 'Q' || key == 'q') restart = false;
}//End keyPressed

void mousePressed() {
}//End mousePressed
