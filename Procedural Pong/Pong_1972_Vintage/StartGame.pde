void StartGame() {
  ball();
  leftPaddle(); //Another purpose of developer written functions
  rightPaddleDraw();
  line(x1RightNet, y1RightNet, x2RightNet, y2RightNet); //Right net
  line(x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet); //Left net
  line(x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine); //Middle line
  rect(xLeftScore, yLeftScore, widthScore, heightScore); //Score left
  rect(xRightScore, yRightScore, widthScore, heightScore); //Score right
}
