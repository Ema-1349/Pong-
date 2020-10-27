void gameover() {
  gameovermsc.play();
  
  outcomebackground();       //Background

  winnertext();              //Winner text displaying who won

  continuebtn();             //Continue button
} 

void gameoverclick() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    mode = intro;
    resetgame();
    gorewind();
    intromsc.play();
    pressplayrewind();
  }
}



///     Outcome Background Overlay     ///
void outcomebackground() {
  if (rscore == winscore) {                     //Red wins background
    rwin = true;
    ywin = false;
    fill(255);
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
    strokeWeight(50);
    rect(0, 0, 800, 600);
  }
  if (lscore == winscore) {                     //Yellow wins background
    rwin = false;
    ywin = true;
    fill(255);
    strokeWeight(50);
    if (boldcolorson == false) {
      stroke(lyellow);
    } else stroke(dyellow);
    rect(0, 0, 800, 600);
  }
}



///     Outcome Text      ///
void winnertext() {                                 //Red win text
  if (rwin == true && ywin == false) {
    fill(255);
    stroke(255);
    rect(50, 50, 700, 500);

    textSize(redwin);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Red wins!", 400, 260);

    redwin = redwin + 1;
    if (redwin > 200) redwin = redwin - 1;
  } 
  if (rwin == false && ywin == true) {              //Yellow win text
    fill(255);
    stroke(255);
    rect(50, 50, 700, 500);

    textSize(yellowwin);
    if (boldcolorson == false) {
      fill(lyellow);
    } else fill(dyellow);
    text("Yellow wins!", 400, 260);

    yellowwin = yellowwin + 1;
    if (yellowwin > 180) yellowwin = yellowwin - 1;
  }
}



///     Continue Button     ///
void continuebtn() {                         //Continue button if red wins
  cnttactile();
  if (rwin == true && ywin == false) {
    if (redwin == 200) {
      strokeWeight(10);
      rect(300, 400, 200, 100, 10);

      if (boldcolorson == false) {
        fill(lyellow);
      } else fill(dyellow);
      textSize(50);
      text("New Game", 400, 445);
    }
  }
  if (rwin == false && ywin == true) {        //Continue buttons if yellow wins
    if (yellowwin == 180) {
      strokeWeight(10);
      rect(300, 400, 200, 100, 10);

      if (boldcolorson == false) {
        fill(lred);
      } else if (boldcolorson == true) {
        fill(dred);
      }
      textSize(50);
      text("New Game", 400, 445);
    }
  }
}
