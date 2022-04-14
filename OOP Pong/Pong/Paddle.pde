/* Ideas 
 Make the paddle change it's colors
 Paddle get's smaller as game proceeds(points increases)
 */
class Paddle 
{ 
  private color colour, whiteColorReset = #000000;
  private int xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle, paddleSpeed = 0, yMove;
  private int leftScore = 0, rightScore = 0;
  private float yLeftScore, yRightScore, widthScore, heightScore, xLeftScore, xRightScore;
  private Boolean nightMode = false;
  private Boolean leftUp = false, rightUp = false, leftDown = false, rightDown = false, leftStop = false, rightStop = false, screenSaver = false, singlePlayer = false ;
  //
  Paddle(float widthParameter, float heightParameter) {
    if (nightMode == false) this.colour = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
    if (nightMode == true) this.colour = color(int(random(0, 255)), int(random(0, 255)), 0);
    //Game starts, paddles in the middle
    widthPaddle = int(heightParameter*3/80);
    heightPaddle = int(heightParameter*1/4);
    xLeftPaddle = int(heightParameter*1/40);
    this.yLeftPaddle = int(heightParameter*1/2) - heightPaddle*1/2;
    xRightPaddle = int(widthParameter*39/40) - widthPaddle;
    this.yRightPaddle = yLeftPaddle;
    //Variables to move paddles
    this.leftUp = false; 
    this.rightUp = false;
    this.leftDown = false;
    this.rightDown = false;
    this.leftStop = false;
    this.rightStop = false;
    //Speed Variables
    //paddleSpeed = 10;
    //paddleSpeedKeys();
    //this.yMove = int((heightParameter / heightParameter) * paddleSpeed);
    //Variables to move the paddles
    //Variables for paddle speed
    yLeftScore = yRightScore = heightParameter*0;
    widthScore = width*1/10;
    heightScore = height*1/10;
    xLeftScore = (width*1/4) - (widthScore*1/2);
    xRightScore = (width*3/4) - (widthScore*1/2);
  }//End Constructor 
  //
  void draw() {
    //playTheGame();
    leftPaddle();
    rightPaddle();
    //
    if (leftScore == 2 || rightScore == 2) heightPaddle = int(height*1/5);
    if (leftScore == 3 || rightScore == 3) heightPaddle = int(height*1/6); 
    if (leftScore == 4 || rightScore == 4) heightPaddle = int(height*1/7);
  }
  //
  void playingModes(int xBallMove, int yBallMove) {
    if (screenSaver == true) {
      yLeftPaddle = yBallMove-heightPaddle*1/2;
      yRightPaddle = yBallMove-heightPaddle*1/2;
    }
    if (singlePlayer == true) {
      yLeftPaddle = yBallMove - heightPaddle*1/2;
    }
  }
  void leftPaddlekeyPressed(){
  
    if (paddleSpeed == 0 ){
      if (key=='T' || key=='t') {
        screenSaver = true;
        paddleSpeed = 20;
        paddleSpeed = 20;
      }
    //
    if (paddleSpeed == 0 ) {
      if (key=='P' || key=='p') {
        singlePlayer = true;
        paddleSpeed = 5;
      }
      //
       if (key=='S' || key=='s') paddleSpeed = 2;
       if (key=='R' || key=='r') paddleSpeed = 5;
       if (key=='F' || key=='f') paddleSpeed = 10;
       this.yMove = int((height / height) * paddleSpeed);
      }
      //this.yMove = int((height / height) * paddleSpeed);
    }
  }
  //
  void leftPaddle() {
    fill(colour);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(whiteColorReset);
    paddleMove();
  }//End leftPaddle
  //
  void rightPaddle() {
    fill(colour);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
    fill(whiteColorReset);
    paddleMove();
  }//End rightPaddle
  //
  void paddleMove() {
    //yLeftPaddle++;
    //yRightPaddle++;
    if (leftUp == true && leftDown == false) {
      yLeftPaddle -= yMove;
      leftStop = false;
    }
    if (leftDown == true && leftUp == false) {
      yLeftPaddle += yMove;
      leftStop = false;
    }
    if (leftStop == true) {
      leftUp = false;
      leftDown = false;
    }
    if (rightUp == true && rightDown == false) {
      yRightPaddle -= yMove;
      rightStop = false;
    }
    if (rightDown == true && rightUp == false) {
      yRightPaddle += yMove;
      rightStop = false;
    }
    if (rightStop == true) {
      rightUp = false;
      rightDown = false;
    }
    //Paddles needs to stop at the top and bottom, otherwise it will go off the screen
    if (yLeftPaddle <= height*0) yLeftPaddle = 0;
    if (yLeftPaddle >= height - heightPaddle) yLeftPaddle = height - heightPaddle;
    if (yRightPaddle <= height*0) yRightPaddle = 0;
    if (yRightPaddle >= height - heightPaddle) yRightPaddle = height - heightPaddle;
    //
    textDraw(height, colour, CENTER, CENTER, titleFont, str(leftScore), xRightScore, yRightScore, widthScore, heightScore);
    textDraw(height, colour, CENTER, CENTER, titleFont, str(rightScore), xLeftScore, yLeftScore, widthScore, heightScore);
  }//End paddleMove
  //
  //IDEAS:
  //
  //void momentumAddToBall() {}//End momentumAddToBall
  //- If the paddle is moving, increase the moment of the ball in the directin of the paddle
  //- If the paddle is stationary, increase the x-axis moment only
  //- ability is controlled in configuration(On or Off)
  //
  //Getter
  //When the ball bounces off the Paddle, randomize the color 20 times (1/3 of a second)
  //
  //setters
  void paddleMoveReset() {
    leftUp = false; 
    rightUp = false;
    leftDown = false;
    rightDown = false;
    leftStop = false;
    rightStop = false;
  }
  //Send paddle location to ball class for collision and bounce
  public void setterLeftUp() {
    paddleMoveReset();
    leftUp = true;
  }
  public void setterLeftDown() {
    paddleMoveReset();
    leftDown = true;
  }
  public void setterLeftStop() {
    paddleMoveReset();
    leftStop = true;
  }
  public void setterRightUp() {
    paddleMoveReset();
    rightUp = true;
  }
  public void setterRightDown() {
    paddleMoveReset();
    rightDown = true;
  }
  public void setterRightStop() {
    paddleMoveReset();
    rightStop = true;
  }
  //
  int xRightPaddleGetter() {
    return xRightPaddle;
  }
  int yRightPaddleGetter() {
    return yRightPaddle;
  }
  int xLeftPaddleGetter() {
    return xLeftPaddle;
  }
  int yLeftPaddleGetter() {
    return yLeftPaddle;
  }
  int heightPaddleGetter() {
    return heightPaddle;
  }
  int widthPaddleGetter() {
    return widthPaddle;
  }
  void leftScoreSetter() {
    leftScore++;
  }
  void rightScoreSetter() {
    rightScore++;
  }
  int leftScoreGetter() {
    return leftScore;
  }
  int rightScoreGetter() {
    return rightScore;
  }
  //
  //
  //Text Calculator 
  PFont titleFont;
  //
  color darkPinkInk = #D65083;
  color nightModePinkInk = #FF43B1, resetColor = #000000;
  //
  void textSetup()
  {
    titleFont = createFont("Georgia", 55);
  }
  //
  void preDrawText(float height, color ink, int alignHorizontal, int alignVerticle, PFont font) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
  }
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    preDrawText( height, ink, alignHorizontal, alignVerticle, font);
    textSize(textCalculator(height, string, widthRec));  
    text(string, xRect, yRec, widthRec, heightRec);
    textReset();
  }//End textDraw()

  void textReset()
  {
    fill(resetColor); // Ink to default
  }//End textReset()
  //
  float textCalculator(float size, String string, float widthRec) 
  {
    textSize(size);
    while (textWidth(string) > widthRec) 
    {
      size = size * 0.9;
      textSize(size);
    }//End While
    size = size * 0.15; //Additional decrease for Font
    return size;
  }//End textCalculator
  //
  //
  void mediaQuiry() {

    String widthWorks = (displayWidth >= width) ? " Game On " : "forced width"; 
    String heightWorks = (displayHeight >= height) ? " Game On " : "forced height";
    String orientation = (width >= height) ? go() : adjustScreen();
    println(widthWorks, "\t\t", heightWorks, "\t\t", orientation);
  }

  String go() 
  {
    geometryCheck = true;
    loop();
    return "Landscape: Game On";
  }

  String adjustScreen()
  {
    textAlign(CENTER);
    textSize(width*1/30);
    fill(#FF9558);
    text("Please ROTATE your screen", width/2, width*1/5);
    noLoop();
    exit();
    return "Please Rotate The Device";
  }
  //
  //
  //
  //
  //
  void instructions() {
    String opening = "LET'S PLAY PONG";
    String start = "--Click The Screen And Select Speed For The Paddles--";
    String instructions1 = "* To select speed for paddles, prees s for slow, r for regular, f for fast ";
    String singlePlayer = "* For single player (Computer VS. Player) : press p and select right paddle speed";
    String screenSaver = "* For screen saver (Computer VS. Computer) : press t";

    //textFont(titleFont);
    textAlign(CENTER);

    textSize(60);
    fill(#62FF80);
    text(opening, width/2, 150);
    textSize(25);
    fill(#FF0E05);
    text(start, width/2, 240);
    textSize(17);
    fill(#FF0E05);
    text(instructions1, width/2, 340);
    text(singlePlayer, width/2, 400);
    text(screenSaver, width/2, 430);
  }
  //
  //
  //
  //
  //
}//End Paddle
