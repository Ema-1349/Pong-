
void intro() {
  intromsc.play();

  if (boldcolorson == false) {     //Background
    background(lteal);
  } else background(dteal);

  backgroundball();                 //background animation

  title();                          //Title

  multiplayerbtn();                 //Multiplayer Mode (AI False)

  customizebtn();                   //Customization screen

  singleplayerbtn();                //Singleplayer mode (AI True)

  helpicon();
}  

void introclick() {

  if (mouseX > 125 && mouseX < 375 && mouseY > 270 && mouseY < 370) {    //Multiplayer Button
    pressplayrewind();
    mode = game;
    AI = false;
    resetgame();
    introrewind();
  }
  if (mouseX > 250 && mouseX < 550 && mouseY > 420 && mouseY < 520) {    //Customize button
    pressplayrewind();
    mode = customize;
    introrewind();
  }
  if (mouseX > 425 && mouseX < 675 && mouseY > 270 && mouseY < 370) {    //Singleplayer button
    pressplayrewind();
    mode = game;
    AI = true;
    resetgame();
    introrewind();
  }

  if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 370) {        //Help Page
    mode = help;
    introrewind();
    pressplayrewind();
  }
 
}



  //     Title     //
  void title() {
    textFont(christmas);
    textSize(180);
    if (boldcolorson == false) {
      fill(lnavy);
    } else fill(dnavy);
    text("P o n g", 400, 100);

    textFont(goodmood);
    textSize(30);
    fill(255);
    text("P                 o                 n                 g", 400, 180);
  }



  //     2 Players Button     //
  void multiplayerbtn() {
    multitactile();

    if (boldcolorson == false) {                    //Button
      fill(lnavy);
    } else fill(dnavy);
    stroke(255);
    rect(125, 270, 250, 100, 30);

    fill(255);                                       //Text
    textFont(goodmood);
    textSize(40);
    text("M u l t i p l a y e r", 250, 315);
  }



  //     1 Player Button     //
  void singleplayerbtn() {
    singletactile();

    if (boldcolorson == false) {                     //Button
      fill(lnavy);
    } else fill(dnavy);
    stroke(255);
    rect(425, 270, 250, 100, 30);

    fill(255);                                       //Text
    textFont(goodmood);  
    textSize(40);
    text("S i n g l e p l a y e r", 550, 315);
  }



  //     Customize Button     //
  void customizebtn() {
    custtactile();

    if (boldcolorson == false) {                     //Button
      fill(lnavy);
    } else fill(dnavy);
    stroke(255);
    rect(250, 420, 300, 100, 30);

    fill(255);                                       //Text
    textFont(goodmood);
    textSize(40);
    text("C  u  s  t  o  m  i  z  e", 400, 465);
  }



  //     Background ball animation     //
  void backgroundball() {
    backgdcolor();                        //Determine the ball's color

    circle(blx, bly, balld/2);            //ball

    blx = blx + vblx;                     //Movement
    bly = bly - vbly;

    if (blx > 800-balld/4) {              //Restrictions
      vblx = -5;
    }
    if (blx < balld/4) {
      vblx = 5;
    }
    if (bly > 600 - balld/4) {
      vbly = 5;
    }
    if (bly < balld/4) {
      vbly = -5;
    }
  }



  ///     Background Ball Color Change     ///
  void backgdcolor() {                                       //Changes the background ball animation's color
    if (blx > 400 && boldcolorson == false) { 
      fill(lred); 
      stroke(lred);
    } else if (blx > 400 && boldcolorson == true) {
      fill(dred);
      stroke(dred);
    }
    if (blx < 400 && boldcolorson == false) {
      fill(lyellow); 
      stroke(lyellow);
    } else if (blx < 400 && boldcolorson == true) {
      fill(dyellow); 
      stroke(dyellow);
    }
  }



  ///     Help Icon     ///
  void helpicon() {
    if (mouseX > 20 && mouseX < 70 && mouseY > 20 && mouseY < 70) {  
      strokeWeight(6);
    } else strokeWeight(3);
    
    fill(255);
    stroke(0);
    rect(20, 20, 50, 50, 10);
    
    image(helpmg,25,25,40,40);
  }
