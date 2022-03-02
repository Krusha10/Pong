void mediaQuiry() {
  //fullScreen();
  int widthRatio = displayWidth;
  int heightRatio = displayHeight;
  size(700, 500);
  widthRatio = width;
  heightRatio = height;
  
  println("display width: ", widthRatio, "\t\tDisplay height: ", heightRatio);
  if (widthRatio > heightRatio) println("\nThis is landscape");
  if (widthRatio < heightRatio) println("\nThis is portrait, please rotate");
  if (widthRatio == heightRatio) println("\nThis is square, you can't play on this device");
  /*
  if (widthRatio == heightRatio) 
  {
    println("\nThis is square, you can't play on this device");
  } else if (widthRatio < heightRatio)
  {
    println("\nThis is portrait, please rotate");
  } else 
  {
    println("\nThis is landscape");
  }
  */
  
  //Java Ternary
  String orientation = (widthRatio >= heightRatio) ? "Game On Dude " : "Please Rotate";
  println(orientation);
  
}
