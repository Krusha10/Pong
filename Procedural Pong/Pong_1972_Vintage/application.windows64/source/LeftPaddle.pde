//Global variables 
int leftPaddleSpeed = 0;
Boolean smoothLeftUp = false, smoothLeftDown = false, screenSaver = false, singlePlayer = false;

void leftPaddle(){
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

void leftPaddlekeyPressed(){
  
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


void leftPaddleStart(){
  fill(#FF9558);
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); 
}//End LeftPaddleStart

void leftPaddleStop(){
  if(y1LeftPaddle <= height*0) {
    y1LeftPaddle = height*0;
  }
  if(y1LeftPaddle + (heightPaddle) >= height) {
    y1LeftPaddle = height - heightPaddle;
   }
}
