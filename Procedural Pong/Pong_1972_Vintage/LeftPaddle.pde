//Global variables 
int leftPaddleSpeed = 1;
Boolean smoothLeftUp = false, smoothLeftDown = false;

void leftPaddle(){
  leftPaddleStart(); //Might have to move outside draw()
  leftPaddleStop();
  if (smoothLeftUp==true) y1LeftPaddle -= leftPaddleSpeed;
  if (smoothLeftDown==true) y1LeftPaddle += leftPaddleSpeed;
}

void leftPaddlekeyPressed(){
  if (key == 'w' || key == 'W' ) {
    smoothLeftUp = true;
    smoothLeftDown = false;
  }
  
  if (key == 's' || key == 'S' ) {
    smoothLeftUp = false;
    smoothLeftDown = true;
  }
  
  if (key == 'd' || key == 'D' ) {
    smoothLeftUp = false;
    smoothLeftDown = false;
  }
}

void leftPaddleStart(){
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); 
}//End LeftPaddleStart

void leftPaddleStop(){
  if(y1LeftPaddle - (heightPaddle*0) < 0) {
    y1LeftPaddle += widthPaddle;
  }
  if(y1LeftPaddle + (heightPaddle) > height) {
    y1LeftPaddle -= widthPaddle;
   }
}
