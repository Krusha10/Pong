

void printText1() {
  String opening = "LET'S PLAY PONG";
  String start = "--Click The Screen And Select Speed For The Paddles--";
  String instructions1 = "** To select speed for left paddle, prees s for slow, r for regular, f for fast **";
  String instructions2 = "** To select speed for right paddle, prees a for slow, b for regular, c for fast **";

  //textFont(titleFont);
  textAlign(CENTER);
  
  textSize(60);
  fill(#62FF80);
  text(opening, width/2, 150);
  textSize(25);
  fill(#FF0E05);
  text(start, width/2, 240);
  textSize(17);
  fill(#FF0E05);
  text(instructions1, width/2, 340);
  text(instructions2, width/2, 370);

}
