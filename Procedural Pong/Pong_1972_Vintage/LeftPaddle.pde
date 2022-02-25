//Global variables 
int leftPaddleSpeed = 8;
Boolean smoothLeftUp = false, smoothLeftDown = false;

void leftPaddle(){
  leftPaddleStart(); //Might have to move outside draw()
  leftPaddleStop();
  //if (smoothLeftUp==true) y1LeftPaddle -= 3;
  //if (smoothLeftDown==true) y1LeftPaddle += 3;
}

/*void leftPaddlekeyPressed(){
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
*/

void leftPaddleStart(){
  rect(x1LeftPaddle, y1LeftPaddle, widthPaddle, heightPaddle); 
  y1LeftPaddle = yBall - widthPaddle;
}//End LeftPaddleStart

void leftPaddleStop(){
  if(y1LeftPaddle - (heightPaddle*0) < 0) {
    y1LeftPaddle += widthPaddle;
  }
  if(y1LeftPaddle + (heightPaddle) > height) {
    y1LeftPaddle -= widthPaddle;
   }
}
