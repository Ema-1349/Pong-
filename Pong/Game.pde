
void game() {
  gmsc.play();
  
  if (boldcolorson == false) {       //Background
    background(lnavy);
  } else background(dnavy);
  fill(255);
  stroke(255);
  strokeWeight(5);
  line(400, 0, 400, 600);

  scoreboard();                     //Score

  paddles();                        //Paddles

  ball();                           //Ball 
}

void gameclick() {
  mode = pause;
  gmsc.pause();
  pressplayrewind();
}



//     Paddles     //
void paddles() {
  if (circlepaddles == true && rectpaddles == false) {      //Draw Circle Paddles
    if (boldcolorson == false) {
      fill(lyellow);
    } else fill(dyellow);
    stroke(255);
    circle(leftx, lefty, leftd);                     
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    stroke(255);
    circle(rightx, righty, rightd);
  }
  if (rectpaddles == true && circlepaddles == false) {       //Draw rectangle paddles
    if (boldcolorson == false) {
      fill(lyellow);
    } else fill(dyellow);
    stroke(255);
    rect(rleftx, rlefty, rleftw, rlefth);
    if (boldcolorson == false) {
      fill(lred);
    } else if (boldcolorson == true) {
      fill(dred);
    }
    stroke(255);
    rect(rrightx, rrighty, rrightw, rrighth);
  }

  if (AI == false) {                               //Left Paddle Movement
    if (wkey == true) lefty = lefty - 5;           
    if (skey == true) lefty = lefty + 5;
    if (wkey == true) rlefty = rlefty - 5;           
    if (skey == true) rlefty = rlefty + 5;
  } else {
    if (ballx < 400 + balld/2) {
      if (bally > lefty) lefty = lefty + 4;
      if (bally < lefty) lefty = lefty - 4;
      if (bally > rlefty) rlefty = rlefty + 4;
      if (bally < rlefty) rlefty = rlefty - 4;
    }
  } 
  if (upkey == true) righty = righty - 5;          //Right Paddle movement
  if (downkey == true) righty = righty + 5;
  if (upkey == true) rrighty = rrighty - 5;         
  if (downkey == true) rrighty = rrighty + 5;

  if (lefty < leftd/2 ) {                          //Circle Paddle restrictions
    lefty = leftd/2;
  }                        
  if (lefty > 600 - leftd/2 ) {
    lefty = 600 - leftd/2;
  }
  if (righty < rightd/2 ) {
    righty = rightd/2;
  }
  if (righty > 600 - rightd/2 ) {
    righty = 600 - rightd/2;
  }

  if (rlefty < 1) {                                //Rectangle paddle restrictions
    rlefty = 1;
  }
  if (rlefty > height-rlefth) {
    rlefty = height-rlefth;
  }
  if (rrighty < 1) {
    rrighty = 1;
  }
  if (rrighty > height-rrighth) {
    rrighty = height-rrighth;
  }
}



//     Ball     //
void ball() {
  if (boldcolorson == false) {
    fill(lteal);
  } else fill(dteal);
  stroke(255);
  circle(ballx, bally, balld);                       //Ball

  timer = timer - 1;                                 //Ball Movement and Restrictions
  if (timer < 0) {
    growcount = 0;
    ballx = ballx + vx;                            
    bally = bally + vy;
    balld = initialballd;
    if (bally > height - balld/2-balld/20 || bally < balld/2+balld/20)  {
      vy = vy*-1;
      impact();
    }
  } else {            
    growcount = growcount + 1;                    //Ball Warning animation before moving
    if (growcount > 40) {
      growOn = false;
    } else {
      growOn = true;
    }
    if (growcount > 80) {
      growcount = 0;
    }
  }
  if (growOn == true) {
    balld = balld + 0.5;
  }
  if (growOn == false) {
    balld = balld - 0.5;
  }
  if (circlepaddles == true && rectpaddles == false) { 
    if (dist(leftx, lefty, ballx, bally) <= leftd/2 + balld/2) {       //Hitting left circular paddle
      vx = (ballx-leftx)/25; 
      vy = (bally-lefty)/25;
      vx = vx*1.5;
      vy = vy*1.5;
      impact();
    }
    if (dist(rightx, righty, ballx, bally) <= rightd/2 + balld/2) {    //Hitting right circular paddle
      vx = (ballx-rightx)/25; 
      vy = (bally-righty)/25;
      vx = vx*1.5;
      vy = vy*1.5;
      impact();
    }
  }

  if (circlepaddles == false && rectpaddles == true) {                 //Hitting left rectangular paddle
    if (ballx - balld/2 < rleftx + rleftw && bally > rlefty && bally < rlefty + rlefth) {       
      vx = vx*-1; 
      vy = vy*-1;
      vx = vx*1.1;
      vy = vy*1.1;
      if (vx >= 5) vx = 5;
      if (vy >= 5) vy = 5;
      impact();
    }
    if (ballx + balld/2 > rrightx && bally > rrighty && bally < rrighty + rrighth) {    //Hitting right rectangular  paddle
      vx = vx*-1; 
      vy = vy*-1;
      vx = vx*1.1;
      vy = vy*1.1;
      if (vx >= 5.5) vx = 5.5;
      if (vy >= 5.5) vy = 5.5;
      impact();
    }
  }
}



//     Scoreboard     //
void scoreboard() {
  textFont(goodmood);                                 //Yellow side score
  textSize(30);
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  text("Score: 0" + lscore, width/4, 100);
 
  if (boldcolorson == false) {                          //Red side score
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  text("Score: " + rscore, 3*width/4, 100);

  if (ballx > width + balld/2) {                        //Scoring
    lscore++;
    ballx = width/2;
    bally = height/2;
    timer = 160;
    pinging();
  }
  if (ballx < 0-balld/2) {
    rscore++;
    ballx = width/2;
    bally = height/2;
    timer = 160;
    pinging();
  }

  if (rscore == winscore) {
    mode = gameover;
    gamerewind();
  } 
  if (lscore == winscore) {
    mode = gameover;
    gamerewind();
  }
}
