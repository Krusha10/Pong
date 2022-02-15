//Globle Variables 
int rightPaddleSpeed = 1; 
Boolean smoothRightUp = false, smoothRightDown = false;

void rightPaddleDraw(){
  rightPaddleStart();
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
}

void rightPaddleStart() {
  rect(x1RightPaddle, y1RightPaddle, widthPaddle, heightPaddle); 
}
