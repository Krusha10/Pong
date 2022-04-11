void display() {
  println(width, height, displayWidth, displayHeight);
  appWidth = width;// switch to displayWidth if using fullScreen()
  appHeight = height;// switch to displayHeight if using fullScreen()
  smallerDisplayDimension = (appWidth <= appHeight) ? appWidth : appHeight;
}//End Display
