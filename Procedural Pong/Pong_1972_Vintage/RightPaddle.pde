//Globle Variables 
int rightPaddleSpeed = 1; 
Boolean smoothRightUp = false, smoothRightDown = false;

void rightPaddleDraw(){
  rightPaddleStart();
  rightPaddleStop();
  if (smoothRightUp==true) y1RightPaddle -= rightPaddleSpeed;
  if (smoothRightDown==true) y1RightPaddle += rightPaddleSpeed;
}

void rightPaddlekeyPressed(){
  if (key == CODED && keyCode == UP ) {
    smoothRightUp = true;
    smoothRightDown = false;
  }
  
  if (key == CODED && keyCode == DOWN) {
    smoothRightUp = false;
    smoothRightDown = true;
  }
  
  if (key == CODED && keyCode == LEFT) {
    smoothRightUp = false;
    smoothRightDown = false;
  }
}

void rightPaddleStart() {
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle); 
}

void rightPaddleStop(){
  if(y1RightPaddle - (heightPaddle*0) < 0) {
    y1RightPaddle += widthPaddle;
  }
  if(y1RightPaddle + (heightPaddle) > height) {
    y1RightPaddle -= widthPaddle;
  }
}
