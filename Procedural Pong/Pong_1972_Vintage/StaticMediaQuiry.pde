void mediaQuiry() {

  String widthWorks = (displayWidth >= width) ? " Game On " : "forced width"; 
  String heightWorks = (displayHeight >= height) ? " Game On " : "forced height";
  String orientation = (width >= height) ? go() : adjustScreen();
  println(widthWorks, "\t\t", heightWorks, "\t\t", orientation);
}

String go() 
{
  geometryCheck = true;
  loop();
  return "Landscape: Game On";
}

String adjustScreen()
{
  noLoop();
  exit();
  return "Please Rotate The Device";
}
