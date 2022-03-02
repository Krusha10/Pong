void mediaQuiry() {
  
  String orientation = (width >= height) ? "Game On Dude " : "Please Rotate";
  println(orientation);
  
}

String adjustScreen()
{
  noLoop();
  exit();
  return "Please Rotate The Device";
}
