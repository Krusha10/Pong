import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Pong_1972_Vintage extends PApplet {

//Global Variables
float xBall, yBall, ballDiameter; 
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
float x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle, x1RightPaddle, y1RightPaddle;
float xLeftScore, yLeftScore, widthScore, heightScore, xRightScore, yRightScore;
Boolean geometryCheck = false, restart = false;

public void setup() {
  
  //Geomtery Communication and Variables for GUI Ratios
  //size(700, 500); //Landscape-orientation
  population(); //One purpose of developer-written function
  textSetup();
}//End setup

public void draw() {
  background(0xff00ACED);
  if (geometryCheck == false) mediaQuiry();
  //
  if (leftPaddleSpeed > 0 && rightPaddleSpeed > 0) {
    if (rightGoalScore == 5 || leftGoalScore == 5) {
      resetGame();
    } else {
      if (restart == false) StartGame();
    } 
  } else {
    printText1();
  }
}//End draw

public void keyPressed() {
  //right paddle - arrow keys
  rightPaddlekeyPressed();
  leftPaddlekeyPressed();
  if (key == 'Q' || key == 'q') {
    restart = false;
    rightGoalScore = 0;
    leftGoalScore = 0;
  }
}//End keyPressed

public void mousePressed() {
}//End mousePressed
int xMove, yMove; //see population 
int rightGoalScore=0, leftGoalScore=0;
Boolean rightGoal=false, leftGoal=false;

public void ball() {
  //while (rightGoalScore != 5 || leftGoalScore!= 5){
    ballStart();
    ballMove();
  //}
  //paddleContact();
}//End ball()

public void ballMove() {
   if ( xBall < x1LeftPaddle+widthPaddle+(ballDiameter*1/2) && yBall > y1LeftPaddle && yBall < y1LeftPaddle+heightPaddle ) xMove *=-1;
   if ( xBall >= x1RightPaddle && yBall > y1RightPaddle && yBall < y1RightPaddle+heightPaddle ) xMove *=-1;
   if ( yBall<=(height*0)+(ballDiameter*1/2) || yBall>=height-(ballDiameter*1/2) ) yMove *= -1;
   //
   if ( xBall >= x1RightNet+(ballDiameter*1/2) ) {
     //xBall = width-ballDiameter*1/2;
     xBall = width*1/2;
     yBall = height*1/2;
     rightGoal = true;
     rightGoalScore++;
   } else if ( xBall <= x1LeftNet-(ballDiameter*1/2) ) {
     //xBall = (width*0)+(ballDiameter*1/2);
     xBall = width*1/2;
     yBall = height*1/2;
     leftGoal = true; 
     leftGoalScore++;
   } else {
     xBall += xMove;
     yBall += yMove;
   }
   
}//End ballMove

public void ballStart() {
  fill(0xffFBFF95);
  ellipse(xBall, yBall, ballDiameter, ballDiameter);
}//End ballStart

/*void paddleContact() {
  if ( xBall<=(x1RightPaddle)-(ballDiameter*1/2) || xBall>=(y1RightPaddle)+(ballDiameter*1/2) ) xMove*=-30;
      xMove = int(random(3, 3));
      yMove = int(random(3, 3));
}
*/
public void resetGame() { 
  background(0xff58F0FF);
  win();
  population();
  rightGoal = false;
  leftGoal = false;
  restart = true;
  gameEnds();
  
}
//Global variables 
int leftPaddleSpeed = 0;
Boolean smoothLeftUp = false, smoothLeftDown = false, screenSaver = false, singlePlayer = false;

public void leftPaddle(){
  leftPaddleStart(); //Might have to move outside draw()
  //
  if (screenSaver == true) {
    y1LeftPaddle = yBall-heightPaddle*1/2;
    y1RightPaddle = yBall-heightPaddle*1/2;
  }
  //
  if (singlePlayer == true) {
    y1LeftPaddle = yBall - heightPaddle*1/2;
  }
  //
  leftPaddleStop();
  if (smoothLeftUp==true) y1LeftPaddle -= leftPaddleSpeed;
  if (smoothLeftDown==true) y1LeftPaddle += leftPaddleSpeed;
}

public void leftPaddlekeyPressed(){
  
  if (leftPaddleSpeed == 0 ){
    if (key=='T' || key=='t') {
      screenSaver = true;
      leftPaddleSpeed = 20;
      rightPaddleSpeed = 20;
    }
  
  if (leftPaddleSpeed == 0 ) {
    if (key=='P' || key=='p') {
      singlePlayer = true;
      leftPaddleSpeed = 5;
    }
    
    if (key=='S' || key=='s') leftPaddleSpeed = 2;
    if (key=='R' || key=='r') leftPaddleSpeed = 5;
    if (key=='F' || key=='f') leftPaddleSpeed = 10;
  }
  }
  if (key == 'w' || key == 'W' ) {
    //smoothLeftUp = true;
    //smoothLeftDown = false;
    y1LeftPaddle -= leftPaddleSpeed; 
  }
  
  if (key == 's' || key == 'S' ) {
    //smoothLeftUp = false;
    //smoothLeftDown = true;
    y1LeftPaddle += leftPaddleSpeed;
  }
  
  if (key == 'd' || key == 'D' ) {
    smoothLeftUp = false;
    smoothLeftDown = false;
  }
}


public void leftPaddleStart(){
  fill(0xffFF9558);
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); 
}//End LeftPaddleStart

public void leftPaddleStop(){
  if(y1LeftPaddle <= height*0) {
    y1LeftPaddle = height*0;
  }
  if(y1LeftPaddle + (heightPaddle) >= height) {
    y1LeftPaddle = height - heightPaddle;
   }
}
/* Best Practice: same variables are populated on the same line
Varibles should be organized to ease human reading
*/
public void population(){
  xBall = width*1/2;
  yBall = height*1/2;
  ballDiameter = width*1/50;
  x2MiddleLine= x1MiddleLine = width*1/2;
  x1LeftPaddle = x2LeftNet = x1LeftNet = width*1/40;
  x2RightNet = x1RightNet = width*39/40;
  yLeftScore = yRightScore = y1MiddleLine = y1RightNet = y1LeftNet = height*0;
  y2MiddleLine = y2RightNet = y2LeftNet = height;
  widthPaddle = width*1/100;
  heightPaddle = height*1/5;
  widthScore = width*1/10;
  heightScore = height*1/10;
  //
  y1LeftPaddle = (height*1/2) - (heightPaddle*1/2);
  y1RightPaddle = (height*1/2)  - (heightPaddle*1/2);
  x1RightPaddle = (width*39/40) - (widthPaddle);
  //
  xLeftScore = (width*1/4) - (widthScore*1/2);
  xRightScore = (width*3/4) - (widthScore*1/2);
  //
  while(xMove==0) xMove = PApplet.parseInt(random(-2,2));
  while(yMove==0) yMove = PApplet.parseInt(random(-2,2));
  /*
  while(yMove==0 || yMove==0) {
    xMove = int(random(-2,2));
    yMove = int(random(-2,2));
  }
  */
}//End population


public void printText1() {
  String opening = "LET'S PLAY PONG";
  String start = "--Click The Screen And Select Speed For The Paddles--";
  String instructions1 = "* To select speed for left paddle, prees s for slow, r for regular, f for fast ";
  String instructions2 = "* To select speed for right paddle, prees a for slow, b for regular, c for fast ";
  String singlePlayer = "* For single player (Computer VS. Player) : press p and select right paddle speed";
  String screenSaver = "* For screen saver (Computer VS. Computer) : press t";

  //textFont(titleFont);
  textAlign(CENTER);

  textSize(60);
  fill(0xff62FF80);
  text(opening, width/2, 150);
  textSize(25);
  fill(0xffFF0E05);
  text(start, width/2, 240);
  textSize(17);
  fill(0xffFF0E05);
  text(instructions1, width/2, 340);
  text(instructions2, width/2, 370);
  text(singlePlayer, width/2, 400);
  text(screenSaver, width/2, 430);
}

public void rightWinner() 
{
  String rWinner = "WINNER";
  String rightPlayer = "Right Player Wins";

  textAlign(CENTER);

  textSize(60);
  fill(0xffFF58E3);
  text(rWinner, width/2, 150);
  textSize(30);
  fill(0xffFF58E3);
  text(rightPlayer, width/2, 200);
}

public void leftWinner() 
{
  String lWinner = "WINNER";
  String leftPlayer = "left Player Wins";

  textAlign(CENTER);

  textSize(60);
  fill(0xffFF9558);
  text(lWinner, width/2, 150);
  textSize(30);
  fill(0xffFF9558);
  text(leftPlayer, width/2, 200);
}

public void gameEnds() {
  
  String playAgain = "Press Q to play again";
  
   textAlign(CENTER);

  textSize(40);
  fill(0xffAE40EA);
  text(playAgain, width/2, 300);
}
//Globle Variables 
int rightPaddleSpeed = 0; 
Boolean smoothRightUp = false, smoothRightDown = false;

public void rightPaddleDraw() {
  rightPaddleStart();
  rightPaddleStop();

  if (smoothRightUp==true) y1RightPaddle -= rightPaddleSpeed;
  if (smoothRightDown==true) y1RightPaddle += rightPaddleSpeed;
}

public void rightPaddlekeyPressed() {

    if (key=='A' || key=='a') rightPaddleSpeed = 2;
    if (key=='B' || key=='b') rightPaddleSpeed = 5;
    if (key=='C' || key=='c') rightPaddleSpeed = 10;
 

  if (key == CODED && keyCode == UP ) {
    //smoothRightUp = true;
    //smoothRightDown = false;
    y1RightPaddle -= rightPaddleSpeed;
  }

  if (key == CODED && keyCode == DOWN) {
    //smoothRightUp = false;
    //smoothRightDown = true;
    y1RightPaddle += rightPaddleSpeed;
  }

  if (key == CODED && keyCode == LEFT) {
    smoothRightUp = false;
    smoothRightDown = false;
  }
}


public void rightPaddleStart() {  
  fill(0xffFF58E3);
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle);
}

public void rightPaddleStop() {
  
  if(y1RightPaddle <= height*0) {
    y1RightPaddle = height*0;
  }
  if(y1RightPaddle + (heightPaddle) > height) {
    y1RightPaddle = height - heightPaddle;
   }
}
//int rightGoalScore = 0, leftGoalScore = 0;
//Boolean rightGoal = false, leftGoal = false;

public void scoreSetup() {
  textSetup();
}

public void scoreDraw() {
  if (rightGoal == true); 
  textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(leftGoalScore), xRightScore, yRightScore, widthScore, heightScore);
  ball();
  if (leftGoal == true);
  textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(rightGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
  
  
}

public void win() 
{
  if (rightGoalScore == 5){
     leftWinner();
  }
  if (leftGoalScore == 5){
    rightWinner();
    
  }
}

public void scoreBoardRectengle() 
 {
 rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
 rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
 }
public void StartGame() {
  ball();
  leftPaddle(); //Another purpose of developer written functions
  rightPaddleDraw();
  line(x1RightNet, y1RightNet, x2RightNet, y2RightNet); //Right net
  line(x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet); //Left net
  line(x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine); //Middle line
  scoreDraw();
}
public void mediaQuiry() {

  String widthWorks = (displayWidth >= width) ? " Game On " : "forced width"; 
  String heightWorks = (displayHeight >= height) ? " Game On " : "forced height";
  String orientation = (width >= height) ? go() : adjustScreen();
  println(widthWorks, "\t\t", heightWorks, "\t\t", orientation);
}

public String go() 
{
  geometryCheck = true;
  loop();
  return "Landscape: Game On";
}

public String adjustScreen()
{
  noLoop();
  exit();
  return "Please Rotate The Device";
}
//Global variables
PFont titleFont;
//
int darkPinkInk = 0xffD65083;
int nightModePinkInk = 0xffFF43B1, resetColor = 0xff000000;
//
public void textSetup()
{
  titleFont = createFont("Georgia", 55);
}
//
public void preDrawText(float height, int ink, int alignHorizontal, int alignVerticle, PFont font) 
{
  fill(ink);
  textAlign(alignHorizontal, alignVerticle);
  textFont(font, height);
}
//
public void textDraw(float height, int ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
{
  preDrawText( height,  ink,  alignHorizontal,  alignVerticle, font);
  textSize(textCalculator(height, string, widthRec));  
  text(string, xRect, yRec, widthRec, heightRec);
  textReset();
}//End textDraw()

public void textReset()
{
  fill(resetColor); // Ink to default 
}//End textReset()
//
public float textCalculator(float size, String string, float widthRec) 
{
  textSize(size);
  while (textWidth(string) > widthRec) 
  {
    size = size * 0.9f;
    textSize(size);
  }//End While
  size = size * 0.15f; //Additional decrease for Font
  return size;
}//End textCalculator
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--hide-stop", "Pong_1972_Vintage" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
