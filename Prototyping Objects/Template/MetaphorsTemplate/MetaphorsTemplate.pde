//Global Variables and Objects
int NumberOfStars = 70;//version of a ststic variable in pure java, final here
Ball[] Stars = new Ball [NumberOfStars];//Processing reqires #, pure java allows static variable
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
  for () {//Read entire object array
    //Randomly choose paranmeters
    Star[i] = new Ball( appWidth*1/2, appHeight*1/2, smallerDisplayDimension*1/100 );
  }//End For population
  //
}//End setup()
//
void draw() {
  Star.drawStar();
}//End Draw()
//
void keyPressed() {
}//End keyPressed()
//
void mousePressed() {
}//End mousePressed()
//
//End Main Driver
