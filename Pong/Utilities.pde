//===================================   Tactile   =================================================
/////////   Intro Tactiles   /////////

//     Tactile for Multiplayer Button    //
void multitactile() {
  if (mouseX > 125 && mouseX < 375 && mouseY > 270 && mouseY < 370) {
    strokeWeight(10);
  } else strokeWeight(5);
}



//     Tactile for Singleplayer Button    //
void singletactile() {
  if (mouseX > 425 && mouseX < 675 && mouseY > 270 && mouseY < 370) {
    strokeWeight(10);
  } else strokeWeight(5);
}



//     Tactile for Customize Button    //
void custtactile() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 420 && mouseY < 520) {
    strokeWeight(10);
  } else strokeWeight(5);
}



/////////   Gameover   //////////

//      Tactile for continue button     //
void cnttactile() {
  if (rwin == true && ywin == false) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
      if (boldcolorson == false) {
        fill(lred);
      } else if (boldcolorson == true) {
        fill(dred);
      }
      stroke(235);
    } else {
      fill(255);
      if (boldcolorson == false) {
        stroke(lred);
      } else if (boldcolorson == true) {
        stroke(dred);
      }
    }
  }
  if (rwin == false && ywin == true) {
    if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
      if (boldcolorson == false) {
        fill(lyellow);
      } else fill(dyellow);
      stroke(235);
    } else {
      fill(255);
      if (boldcolorson == false) {
        stroke(lyellow);
      } else stroke(dyellow);
    }
  }
}



//////////   Customization   //////////

//     Tactile for pageflip buttons     //
void fliptactile() {
  if (mouseX > 650 && mouseX < 710 && mouseY > 65 && mouseY < 125) {
    if (boldcolorson == false) {
      stroke(lyellow);
    } else stroke(dyellow);
  } else noStroke();
}

//     Tactile to change ball sizes     //
void bsizetactile(int x, int r) {
  if (dist(mouseX, mouseY, x, 270)<r) {
    if (boldcolorson == false) {
      stroke(lnavy);
    } else stroke(dnavy);
  } else {
    stroke(235);
    if (boldcolorson == false) {
      fill(lyellow);
    } else fill(dyellow);
  }
}

//      Tactile for circular paddle selection     //
void psctactile() {
  if (circlepaddles == true && rectpaddles == false) {
    fill(255);
    stroke(255);
  } else if (mouseX > 45 && mouseX < 400 && mouseY > 410 && mouseY < 560) {
    fill(255);
    stroke(255);
  } else {
    fill(235);
    stroke(235);
  }
}

//      Tactile for rectangular paddle selection     //
void psrtactile() {
  if (circlepaddles == false && rectpaddles == true) {
    fill(255);
    stroke(255);
  } else if (mouseX > 400 && mouseX < 760 && mouseY > 410 && mouseY < 560) {
    fill(255);
    stroke(255);
  } else {
    fill(235);
    stroke(235);
  }
}



//////////   Cust2   ///////////

//     Tactile for pageflip buttons     //
void fliptactile2() {
  if (mouseX > 100 && mouseX < 160 && mouseY > 65 && mouseY < 125) {
    if (boldcolorson == false) {
      stroke(lyellow);
    } else stroke(dyellow);
  } else noStroke();
}

//     Tactile for done button     //
void donetactile() {
  if (mouseX > 650 && mouseX < 750 && mouseY > 430 && mouseY < 480) {
    if (boldcolorson == false) {
      stroke(lyellow);
    } else stroke(dyellow);
  } else {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

//     Tactile for buttons to determing winscore     //
void determinewstactiles() {
  if (mouseX > 420 && mouseX < 520 && mouseY > 210 && mouseY < 275) {
    strokeWeight(7);
  } else strokeWeight(5);
}

void determinewstactilea() {
  if (mouseX > 570 && mouseX < 670 && mouseY > 210 && mouseY < 275) {
    strokeWeight(7);
  } else strokeWeight(5);
}

//     Tactiles for light and dark mode     //
void pastelbtn() {
  if (mouseX > 130 && mouseX < 230 && mouseY > 370 && mouseY < 430) {
    strokeWeight(10);
  } else strokeWeight(5);
}

void boldbtn() {
  if (mouseX > 430 && mouseX < 530 && mouseY > 370 && mouseY < 430) {
    strokeWeight(10);
  } else strokeWeight(5);
}



//==================================   Toggle and Other  =====================================================

//     Toggle to see which ball size is selected     //
void defaulttoggle() {
  if (defaulton == true) {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

void smalltoggle() {
  if (smallon == true) {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

void smallesttoggle() {
  if (smalleston == true) {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

void bigtoggle() {
  if (bigon == true) {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

void biggesttoggle() {
  if (biggeston == true) {
    if (boldcolorson == false) {
      stroke(lred);
    } else if (boldcolorson == true) {
      stroke(dred);
    }
  }
}

//     Controls what is displayed with each score increase/decrease     //
void winscorechanges() {
  if (winscore == 1) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("One", 345, 240);
  } else if (winscore == 2) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Two", 345, 240);
  } else if (winscore == 3) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Three", 345, 240);
  } else if (winscore == 4) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Four", 345, 240);
  } else if (winscore == 5) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Five", 345, 240);
  } else if (winscore == 6) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Six", 345, 240);
  } else if (winscore == 7) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Seven", 345, 240);
  } else if (winscore == 8) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Eight", 345, 240);
  } else if (winscore == 9) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Nine", 345, 240);
  } else if (winscore == 10) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Ten", 345, 240);
  } else if (winscore == 11) {
    textSize(35);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    text("Eleven", 345, 240);
  }
}



//===================================   Resets   =====================================================

///   Resets the game for a new game   ///
void resetgame() {
  rwin = false;
  ywin = false;
  redwin = yellowwin = 0;
  rscore = lscore = 0;

  ballx = 400;
  bally = 300;
  balld = initialballd;

  leftx = 0;
  lefty = height/2;
  leftd = 200;

  rightx = width;
  righty = height/2;
  rightd = 200;

  timer = 160;
}

//     Customize background music     //
void custmscrewind(){
  custmsc.pause();
  custmsc.rewind();
}

//     Pause background music     //
void pmscrewind(){
  pausemsc.pause();
  pausemsc.rewind();
}

//     Game Background Music     //
void gamerewind(){
  gmsc.pause();
  gmsc.rewind();
}

//     Gameover Background Music     //
void gorewind(){
  gameovermsc.pause();
  gameovermsc.rewind();
}

//     Intro Background Music     //
void introrewind(){
  intromsc.pause();
  intromsc.rewind();
}

//     Press Buttons     //
void pressplayrewind(){
  press.play();
  press.rewind();
}

//     flip page Button     //
void flipp(){
  pageflip.play();
  pageflip.rewind();
}

//     Ball Impacts     //
void impact(){
  bounce.play();
  bounce.rewind();
}

//     Ping     //
void pinging(){
  ping.play();
  ping.rewind();
}

//     Help     //
void helprewind(){
  helpmsc.pause();
  helpmsc.rewind();
}
