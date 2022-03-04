//Global variables 
int leftPaddleSpeed = 0;
Boolean smoothLeftUp = false, smoothLeftDown = false;

void leftPaddle(){
  leftPaddleStart(); //Might have to move outside draw()
  leftPaddleStop();
  if (smoothLeftUp==true) y1LeftPaddle -= leftPaddleSpeed;
  if (smoothLeftDown==true) y1LeftPaddle += leftPaddleSpeed;
}

void leftPaddlekeyPressed(){
  
  if (leftPaddleSpeed == 0 ){
    if (key=='S' || key=='s') leftPaddleSpeed = 2;
    if (key=='R' || key=='r') leftPaddleSpeed = 5;
    if (key=='F' || key=='f') leftPaddleSpeed = 10;
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
  fill(#FF40DC);
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
