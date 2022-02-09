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
  population();
  xLeftScore = width*1/4;
  xRightScore = width*3/4;
  yLeftScore = yRightScore = height*0;
  widthScore = width*1/10;
  heightScore = height*1/10;
  
}//End setup

void draw() {
  ellipse(xBall, yBall, BallDiameter, BallDiameter);
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); 
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle); 
  line(x1RightNet, y1RightNet, x2RightNet, y2RightNet); //Right net
  line(x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet); //Left net
  line(x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine); //Middle line
  rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
  rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
