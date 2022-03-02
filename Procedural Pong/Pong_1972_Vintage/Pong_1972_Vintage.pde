//Global Variables
float xBall, yBall, ballDiameter; 
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
float x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle, x1RightPaddle, y1RightPaddle;
float xLeftScore, yLeftScore, widthScore, heightScore, xRightScore, yRightScore;

void setup() {
  //Geomtery Communication and Variables for GUI Ratios
  size(500, 700); //Landscape-orientation 
  mediaQuiry();
  //fullScreen(displayWidth, displayHeight);
  population(); //One purpose of developer-written function 
  
}//End setup

void draw(){
  mediaQuiry();
  if (leftPaddleSpeed > 0 && rightPaddleSpeed > 0) {
    StartGame();
  } else {
    println("To select speed for left paddle, pree s for slow, r for regular, f for fast");
    println("To select speed for right paddle, pree a for slow, b for regular, c for fast");
  }
}//End draw

void keyPressed() {
  //right paddle - arrow keys
  rightPaddlekeyPressed();
  leftPaddlekeyPressed();
}//End keyPressed

void mousePressed() {
}//End mousePressed
