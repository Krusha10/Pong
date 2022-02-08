//Global Variables
float xBall, yBall, BallDiameter; 
float x1LeftNet, y1Net, x2LeftNet, y2Net;
float x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle, x1RightPaddle, y1RightPaddle;

void setup() {
  //Geomtery Communication and Variables for GUI Ratios
  size(700, 500); //Landscape-orientation //fullScreen(); //displayWidth, displayHeight
  population();
  x1LeftPaddle = x1LeftNet;
  y1LeftPaddle = height*1/2; //Too low
  widthPaddle = width*1/100;
  heightPaddle = height*1/5;
  x1RightPaddle = width*39/40;
  y1RightPaddle = y1LeftPaddle;
}//End setup

void draw() {
  ellipse(xBall, yBall, BallDiameter, BallDiameter);
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); //Left paddle
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle); //Right paddle
  //line(x1NetRightTop, y1NetRightTop, x1NetRightBottom, y1NetRightBottom); //Right net
  line(x1LeftNet, y1Net, x2LeftNet, y2Net); //Left net
  //line(xMiddleLineTop, yMiddleLineTop, xMiddleLineBottom, yMiddleLineBottom); //Middle line
  //rect(); //Score left
  //rect(); //Score right
}//End draw

void keyPressed() {
}//End keyPressed

void mousePressed() {
}//End mousePressed
