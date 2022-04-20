void starsPopulation () {
  while (redo == true) { 
    for (int i = 0; i < stars.length; i++) {//Read entire object array
    //Randomly choose paranmeters
      float randomDiameter = random (smallerDisplayDimension*1/10, smallerDisplayDimension*1/5);//Consider user input
      float randomX = random (0 + randomDiameter*1/2, appWidth - randomDiameter*1/2);//No stars in net(boundry)
      float randomY = random (0 + randomDiameter*1/2, appHeight - randomDiameter*1/2); // Entire appHeight OK
      stars[i] = new Ball(randomDiameter, randomX, randomY);
      int j = i;
      //
      while (j >= 0) {
        if ( randomX - randomDiameter*1/2 > stars[j].xBall && randomX +randomDiameter*1/2 < stars[j].xBall) {
          randomX = random ( randomDiameter*1/2, appWidth - randomDiameter*1/2);
        }//End WHILE-X
        j--;
      }
      //
      stars[i] = new Ball(randomDiameter, randomX, randomY);
      //
      j = i;
      while (j >= 0) {
        if (randomY - randomDiameter*1/2 > stars[j].yBall && randomY + randomDiameter*1/2 < stars[j].yBall ) {
          randomY = random (randomDiameter*1/2, appHeight - randomDiameter*1/2);
        }//End IF
        j--;
      }//End WHILE
      stars[i] = new Ball(randomDiameter, randomX, randomY);
    }//End For population
    redo = false;
    //
    for (int i = 0; i < stars.length; i++) {
      for (int j = stars.length - 1; j > i; j--) {
        if (stars[i].xBall + stars[i].diameter < stars[j].xBall && stars[j].xBall- stars[j].diameter > stars[i].xBall) redo = true;
        if (stars[i].yBall + stars[i].diameter < stars[j].yBall && stars[j].yBall- stars[j].diameter > stars[i].yBall) redo = true;
      }
    }
  }//End WHILE
}//End starsPopulation
