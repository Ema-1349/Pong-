
//   Extra variables for pause screen that controls the growth and shrinking of "Click to Continue" text
float tsize = 50;
boolean flip;


void pause() {
  pausemsc.play();
  
  if (boldcolorson == false) {           //Background
    fill(8, 95, 99, 10);
  } 
  if (boldcolorson == true) {
    fill(5, 60, 63, 10);
  }
  rect(0, 0, 800, 600);

  fill(255);                             //Title
  textSize(200);
  text("P a u s e d", 400, 200);

  if (boldcolorson == false) {           //Hides "Click to continue" 
    fill(lnavy);
  } else fill(dnavy);
  noStroke();
  rect(180, 360, 500, 90);

  textSize(tsize);                       //Intructions to continue with the game
  fill(255);
  text("Click  to  continue", 400, 400);

  if (flip == false) tsize = tsize + .5; //Controls growth n shrinking of instructions text
  if (flip == true) tsize = tsize - .5;
  if (tsize == 70) flip = true;
  if (tsize == 35) flip = false;
}

void pauseclick() {
  mode = game;
  tsize = 50;
  gmsc.play();
  pmscrewind();
  pressplayrewind();
}
