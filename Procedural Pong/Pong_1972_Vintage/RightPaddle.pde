//Globle Variables 
int rightPaddleSpeed = 8; 
Boolean smoothRightUp = false, smoothRightDown = false;

void rightPaddleDraw(){
  rightPaddleStart();
  //rightPaddleStop();
  //if (smoothRightUp==true) y1RightPaddle -= 3;
  //if (smoothRightDown==true) y1RightPaddle += 3;
}

/*void rightPaddlekeyPressed(){
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
*/

void rightPaddleStart() {
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle); 
  y1RightPaddle = yBall - heightPaddle*1/2;
  if(y1RightPaddle - (heightPaddle*0) < 0) {
    y1RightPaddle += widthPaddle;
  }
  if(y1RightPaddle + (heightPaddle) > height) {
    y1RightPaddle -= widthPaddle;
  }
}

/*void rightPaddleStop(){
  if(y1RightPaddle - (heightPaddle*0) < 0) {
    y1RightPaddle += widthPaddle;
  }
  if(y1RightPaddle + (heightPaddle) > height) {
    y1RightPaddle -= widthPaddle;
  }
}
*/
