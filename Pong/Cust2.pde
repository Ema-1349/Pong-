void customize2() {
  backgroundborder();        //Background

  highlight2();              //Title Highlight

  ctitle2();                 //Title

  flippage2();               //Page flip

  done();                    //Exit customization

  determinews();             //Determine the total amount of points needed to be scored to win the game

  saturationchange();        //Determine the color scheme
}

void customize2click() {
  if (mouseX > 100 && mouseX < 160 && mouseY > 65 && mouseY < 125) {         //Flip page
    mode = customize;
    flipp();
  } 
  if (mouseX > 650 && mouseX < 750 && mouseY > 430 && mouseY < 480) {        //Complete customization
    mode = intro;
    custmscrewind();
    intromsc.play();
    pressplayrewind();
  }


  if (mouseX > 420 && mouseX < 520 && mouseY > 210 && mouseY < 275) {        // Determine winscore, wether addition or subtraction
    if (winscore >= 2) winscore = winscore - 1;
    if (winscore == 1) winscore = 1;
    pressplayrewind();
  }
  if (mouseX > 570 && mouseX < 670 && mouseY > 210 && mouseY < 275) {
    if (winscore <= 10) winscore = winscore + 1; 
    if (winscore == 11) winscore = 11;
    pressplayrewind();
  }

  if (mouseX > 130 && mouseX < 230 && mouseY > 370 && mouseY < 430) {         //Lightmode button
    boldcolorson = false;
    pressplayrewind();
  }
  if (mouseX > 430 && mouseX < 530 && mouseY > 370 && mouseY < 430) {         //Darkmode button
    boldcolorson = true;
    pressplayrewind();
  }
}



//     Title     //
void ctitle2() {
  textSize(100);
  textFont(goodmood);
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Customize", 574, 84);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Customize", 570, 80);
}



//     Buttons to change to different pages     //
void flippage2() {

  strokeWeight(5);                       //Left button to go back to page 1
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  fliptactile2();
  rect(100, 65, 60, 60, 10);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  line(115, 95, 145, 80);
  line(115, 95, 145, 110);

  if (boldcolorson == false) {
    fill(lfaintred);                       //Right button that isnt clickable
  } else if (boldcolorson == true) {
    fill(dfaintred);
  }
  noStroke();
  rect(280, 65, 60, 60, 10);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  line(325, 95, 295, 80);
  line(325, 95, 295, 110);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }                                       //Text that tells you which page you're on
  textSize(0.1);
  textFont(christmas);
  text("Page Two", 220, 92);
}



//     Highlight behind title and page flip     //
void highlight2() {
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);                  
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  strokeWeight(20);
  line(15, 95, 785, 95);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  noStroke();
  rect(783, 70, 20, 40);
}



//     Done button     //
void done() {
  donetactile();

  fill(255);                       //button
  strokeWeight(5);
  rect(650, 430, 100, 50, 5);

  textSize(40);                    //Text
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("D o n e", 700, 452);
}



//     Change amount to determine win score     //
void determinews() { 
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }                                             //Headings
  textSize(40);
  text("Score to win", 108, 182);

  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Score to win", 110, 180);
  strokeWeight(5);
  if (boldcolorson == false) {
    stroke(lred);
  } else if (boldcolorson == true) {
    stroke(dred);
  }
  line(200, 183, 750, 183);

  fill(255);                                    //Backdrop for number display
  if (boldcolorson == false) {
    stroke(lred);
  } else if (boldcolorson == true) {
    stroke(dred);
  }
  rect(310, 220, 70, 50, 5);

  textSize(35);                                 //Subheading
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Current score to win: ", 200, 240);

  fill(255);
  if (boldcolorson == false) {
    stroke(lred);
  } else if (boldcolorson == true) {
    stroke(dred);
  }
  determinewstactiles();
  rect(420, 210, 100, 65);                     //Subtract button
  determinewstactilea();
  rect(570, 210, 100, 65);                     //Add button

  textSize(30);                                //Button text
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Minus One", 470, 240);
  text("Add One", 620, 240);  

  winscorechanges();                           //Determines text for number display
}



//     Darkmode or Lightmode Switch     //
void saturationchange() {
  textSize(40);                               //Headings
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Saturation", 682, 312);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Saturation", 680, 310);

  strokeWeight(5);
  line(50, 312, 590, 312);

  fill(255);
  stroke(225);
  strokeWeight(10);
  rect(80, 450, 200, 100);                   //Pastel colorscheme
  noStroke();
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  rect(80, 450, 50, 100);
  fill(lyellow);
  rect(130, 450, 50, 100);
  fill(lnavy);
  rect(180, 450, 50, 100);
  fill(lteal);
  rect(230, 450, 50, 100);

  strokeWeight(10);
  stroke(25);
  rect(380, 450, 200, 100);                  //Bold colorscheme
  noStroke();
  fill(dred);
  rect(380, 450, 50, 100);
  fill(dyellow);
  rect(430, 450, 50, 100);
  fill(dnavy);
  rect(480, 450, 50, 100);
  fill(dteal);
  rect(530, 450, 50, 100);

  pastelbtn();                                //Button for pastel         
  stroke(225);
  fill(255);
  rect(130, 370, 100, 60);

  fill(0);
  textSize(30);
  text("Pastel", 180, 398);

  boldbtn();                                 //Button for bold
  stroke(25);                          
  fill(0);
  rect(430, 370, 100, 60);

  fill(255);
  textSize(30);
  text("Bold", 480, 398);
}
