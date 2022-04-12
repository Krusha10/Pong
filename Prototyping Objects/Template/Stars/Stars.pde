//Global Variables and Objects
int NumberOfStars = 5;//version of a ststic variable in pure java, final here
Ball[] stars = new Ball [NumberOfStars];//Processing reqires #, pure java allows static variable
//Ball stars;
//
int appWidth, appHeight;//final variables
int smallerDisplayDimension;//final variables
//
Boolean redo = true;
//
void setup() {
  size(700, 500);
  //fullScreen();
  //portrait, not landscape or square 
  println(width, height, displayWidth, displayHeight);
  //appWidth = width;// switch to displayWidth if using fullScreen()
  //appHeight = height;// switch to displayHeight if using fullScreen()
  //smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
  //
  
  for (int i = 0; i < stars.length; i++) {//Read entire object array
    stars[i] = new Ball ( 50, width, height); 
  }//End For population
  
  //
  /*
  while (redo == true) { 
    for (int i = 0; i < stars.length; i++) {//Read entire object array
    //Randomly choose paranmeters
      float randomDiameter = random (smallerDisplayDimension*1/10, smallerDisplayDimension*1/5);//Consider user input
      float randomX = random (0 + randomDiameter*1/2, appWidth - randomDiameter*1/2);//No stars in net(boundry)
      float randomY = random (0 + randomDiameter*1/2, appHeight - randomDiameter*1/2); // Entire appHeight OK
      stars[i] = new Ball(randomDiameter, randomX, randomY);
      int j = i;
      //
      while (j >= 0) {
        if ( randomX - randomDiameter*1/2 > stars[j].xBall && randomX +randomDiameter*1/2 < stars[j].xBall) {
          randomX = random ( randomDiameter*1/2, appWidth - randomDiameter*1/2);
        }//End WHILE-X
        j--;
      }
      //
      stars[i] = new Ball(randomDiameter, randomX, randomY);
      //
      j = i;
      while (j >= 0) {
        if (randomY - randomDiameter*1/2 > stars[j].yBall && randomY + randomDiameter*1/2 < stars[j].yBall ) {
          randomY = random (randomDiameter*1/2, appHeight - randomDiameter*1/2);
        }//End IF
        j--;
     }//End WHILE
     stars[i] = new Ball(randomDiameter, randomX, randomY);
   }//End For population
   redo = false;
   //
   for (int i = 0; i < stars.length; i++) {
     for (int j = stars.length - 1; j > i; j--) {
       if (stars[i].xBall + stars[i].diameter < stars[j].xBall && stars[j].xBall- stars[j].diameter > stars[i].xBall) redo = true;
       if (stars[i].yBall + stars[i].diameter < stars[j].yBall && stars[j].yBall- stars[j].diameter > stars[i].yBall) redo = true;
     }
   }
 }//End WHILE
 */
  //
}//End setup()
//
void draw() {
  
  for (int i = 0; i < stars.length; i++) {//Read entire object array
   stars[i].drawStar();
  }//End For population
   
  //for (Ball ball : stars) {
    // ball.drawStar();
  //}
}//End Draw()
//
void keyPressed() {
}//End keyPressed()
//
void mousePressed() {
}//End mousePressed()
//
//End Main Driver
