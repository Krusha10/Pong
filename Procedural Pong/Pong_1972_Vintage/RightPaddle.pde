//Globle Variables 
int rightPaddleSpeed = 0; 
Boolean smoothRightUp = false, smoothRightDown = false, singlePlayer = false;

void rightPaddleDraw() {
  rightPaddleStart();
  rightPaddleStop();
  //
  if (singlePlayer == true) {
    y1RightPaddle = yBall - heightPaddle*1/2;
  }
  //

  if (smoothRightUp==true) y1RightPaddle -= rightPaddleSpeed;
  if (smoothRightDown==true) y1RightPaddle += rightPaddleSpeed;
}

void rightPaddlekeyPressed() {

  if (rightPaddleSpeed == 0 ) {
    if (key=='P' || key=='p') {
      singlePlayer = true;
      rightPaddleSpeed = 5;
    } 
    if (key=='A' || key=='a') rightPaddleSpeed = 2;
    if (key=='B' || key=='b') rightPaddleSpeed = 5;
    if (key=='C' || key=='c') rightPaddleSpeed = 10;
  }

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


void rightPaddleStart() {  
  fill(#FF40DC);
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle);
}

void rightPaddleStop() {
  
  if(y1RightPaddle <= height*0) {
    y1RightPaddle = height*0;
  }
  if(y1RightPaddle + (heightPaddle) > height) {
    y1RightPaddle = height - heightPaddle;
   }
}
