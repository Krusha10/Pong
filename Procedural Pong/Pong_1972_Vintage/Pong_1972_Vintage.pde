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
  //Geomtery Communication and Variables for GUI Ratios
  size(700, 500); //Landscape-orientation
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
    println("For single player: press p");
    println("For screen saver: press t");
    printText1();
    //println("To select speed for left paddle, pree s for slow, r for regular, f for fast");
    //println("To select speed for right paddle, pree a for slow, b for regular, c for fast");
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
