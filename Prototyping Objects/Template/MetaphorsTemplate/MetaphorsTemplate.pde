//Global Variables and Objects
int NumberOfStars = 15;//version of a ststic variable in pure java, final here
Ball[] stars = new Ball [NumberOfStars];//Processing reqires #, pure java allows static variable
//
int appWidth, appHeight;//final variables
int smallerDisplayDimension;//final variables
//
void setup() {
  size(700, 500);
  //fullScreen();
  //portrait, not landscape or square 
  println(width, height, displayWidth, displayHeight);
  appWidth = width;// switch to displayWidth if using fullScreen()
  appHeight = height;// switch to displayHeight if using fullScreen()
  smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
  //
  for (int i = 0; i < stars.length; i++) {//Read entire object array
    //Randomly choose paranmeters
    float randomDiameter = random (smallerDisplayDimension*1/10, smallerDisplayDimension*1/5);//Consider user input
    float randomX = random (0 + randomDiameter*1/2, appWidth - randomDiameter*1/2);//No stars in net(boundry)
    float randomY = random (0 + randomDiameter*1/2, appHeight - randomDiameter*1/2); // Entire appHeight OK
    stars[i] = new Ball(randomDiameter, randomX, randomY);
    int j = i;
    //
    while (j >= 0) {
      if ( randomX > stars[j].xBall - stars[j].diameter*1/2 &&  randomX < stars[j].xBall + stars[j].diameter*1/2) {
        randomX = random ( randomDiameter*1/2, appWidth - randomDiameter*1/2);
      }//End WHILE-X
      j--;
    }
    //
    stars[i] = new Ball(randomDiameter, randomX, randomY);
    //
    j = i;
    while (j >= 0) {
      if (randomY > stars[j].yBall - stars[j].diameter*1/2 &&  randomY < stars[j].yBall + stars[j].diameter*1/2) {
        randomY = random (randomDiameter*1/2, appHeight - randomDiameter*1/2);
      }//End IF
      j--;
    }//End WHILE
    stars[i] = new Ball(randomDiameter, randomX, randomY);
  }//End For population
  //
}//End setup()
//
void draw() {
  for (int i = 0; i < stars.length; i++) {//Read entire object array
    stars[i].drawStar();
  }//End For population
}//End Draw()
//
void keyPressed() {
}//End keyPressed()
//
void mousePressed() {
}//End mousePressed()
//
//End Main Driver
