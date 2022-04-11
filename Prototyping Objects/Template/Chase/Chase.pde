//Global Variables and Objects
int NumberOfStars = 1;//version of a ststic variable in pure java, final here
Ball[] stars = new Ball [1];//Processing reqires #, pure java allows static variable
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
  display();
  starsPopulation();
  //
}//End setup()
//
void draw() {
  for (Ball star : stars) {
    star.drawStar();
  }
}//End Draw()
//
void keyPressed() {
}//End keyPressed()
//
void mousePressed() {
  //mouseX, mouseY
  for (int i = 0; i < stars.length; i++) {
    stars[i].setTargetX(mouseX); //Value of mouse-click
    stars[i].setTargetY(mouseY); //Value of mouse-click
  }//End FOR LOOP
}//End mousePressed()
//
//End Main Driver
