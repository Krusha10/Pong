//Global Variables and Objects
//int NumberOfStars = 5;//version of a ststic variable in pure java, final here
//Ball[] stars = new Ball [NumberOfStars];//Processing reqires #, pure java allows static variable
//Ball stars;
//
//int appWidth, appHeight;//final variables
//int smallerDisplayDimension;//final variables
//
//Boolean redo = true;
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
    stars[i].star();
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
