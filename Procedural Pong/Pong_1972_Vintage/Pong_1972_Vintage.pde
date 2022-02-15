//Global Variables
float xBall, yBall, BallDiameter; 
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
float x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle, x1RightPaddle, y1RightPaddle;
float xLeftScore, yLeftScore, widthScore, heightScore, xRightScore, yRightScore;

void setup() {
  //Geomtery Communication and Variables for GUI Ratios
  size(700, 500); //Landscape-orientation //fullScreen(); //displayWidth, displayHeight
  population(); //One purpose of developer-written function 
  
}//End setup

void draw(){
  ball();
  leftPaddle(); //Another purpose of developer written functions
  rightPaddleDraw();
  line(x1RightNet, y1RightNet, x2RightNet, y2RightNet); //Right net
  line(x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet); //Left net
  line(x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine); //Middle line
  rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
  rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
}//End draw

void keyPressed() {
  //right paddle - arrow keys
  rightPaddlekeyPressed();
}//End keyPressed

void mousePressed() {
}//End mousePressed
