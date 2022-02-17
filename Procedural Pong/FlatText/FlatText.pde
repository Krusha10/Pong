size(500, 600);
println("Start of console");
String[] fontList = PFont.list(); 
printArray(fontList);
PFont titleFont = createFont("Georgia", 55);
int titleX, titleY, titleWidth, titleHeight;
titleX = width*1/5;
titleY = height*1/10;
titleWidth = width*3/5;
titleHeight = height*1/10;
rect(titleX, titleY, titleWidth, titleHeight);
String title = "Wahoo!";
color blueInk = #76D1CE;
color nightModePinkInk = #FF43B1;
color resetColor = #000000;
//
fill(blueInk);
textAlign(CENTER, CENTER);
textFont(titleFont, 52); //Chnage number untill it fits
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetColor); // Ink to default 
