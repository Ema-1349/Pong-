void customize() {
  backgroundborder();    //Background
           
  custmsc.play();        //Music

  highlight();           //Highlight behind title

  ctitle();              //Title
 
  flippage();            //Flip page buttons

  ballsize();            //Control ball/target size

  paddleshapec();        //Circular paddles
 
  paddleshaper();        //Rectangular paddles
}

void customizeclick() {
  if (mouseX > 650 && mouseX < 710 && mouseY > 65 && mouseY < 125) {
    mode = customize2;
    flipp();
  } 

//       Different ball sizes       //
  if (dist(mouseX, mouseY, 360, 270) < 50) {    //Default
    balld = initialballd = 100;
    defaulton = !defaulton;
    smallon = smalleston = bigon = biggeston = false;
    pressplayrewind();
  }
  if (dist(mouseX, mouseY, 220, 270) < 45) {
    balld = initialballd = 90;
    smallon = !smallon;
    defaulton = smalleston = bigon = biggeston = false;
    pressplayrewind();
  }   
  if (dist(mouseX, mouseY, 90, 270) < 40) {     //Smallest
    balld = initialballd = 80;
    smalleston = !smalleston;
    smallon = defaulton = bigon = biggeston = false;
    pressplayrewind();
  }
  if (dist(mouseX, mouseY, 520, 270) < 55) {
    balld = initialballd = 110;
    bigon = !bigon;
    smallon = smalleston = defaulton = biggeston = false;
    pressplayrewind();
  }
  if (dist(mouseX, mouseY, 690, 270) < 60) {    //Biggest
    balld = initialballd = 120;
    biggeston = !biggeston;
    smallon = smalleston = bigon = defaulton = false;
    pressplayrewind();
  }

//     Paddle Change     //  
  if (mouseX > 45 && mouseX < 400 && mouseY > 410 && mouseY < 560) {      //Circle paddle button
    circlepaddles = !circlepaddles; 
    if (circlepaddles == true) rectpaddles = false;
    if (circlepaddles == false) rectpaddles = true;
    pressplayrewind();
  }
  if (mouseX > 400 && mouseX < 760 && mouseY > 410 && mouseY < 560) {     //Rectangular paddle button
    rectpaddles = !rectpaddles;
    if (rectpaddles == true) circlepaddles = false;
    if (rectpaddles == false) circlepaddles = true;
    pressplayrewind();
  }
}



//     Background and Border     //
void backgroundborder() {
  if (boldcolorson == false) {
    background(lyellow);
  } else background(dyellow);
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  if (boldcolorson == false) {
    stroke(lred);
  } else if (boldcolorson == true) {
    stroke(dred);
  }
  strokeWeight(5);
  rect(402, 0, 400, 600);

  fill(255);
  stroke(255);
  rect(20, 20, 760, 560);
}



//     Title     //
void ctitle() {
  textSize(100);
  textFont(goodmood);
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Customize", 226, 84);

  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Customize", 230, 80);
}



//     Buttons to change to different pages     //
void flippage() {

  if (boldcolorson == false) {
    fill(lfaintred);
  } else if (boldcolorson == true) {
    fill(dfaintred);
  }
  noStroke();
  strokeWeight(5);
  rect(470, 65, 60, 60, 10);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  line(485, 95, 515, 80);             //ALeft button
  line(485, 95, 515, 110);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  fliptactile();                      //Right button
  rect(650, 65, 60, 60, 10);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  line(695, 95, 665, 80);
  line(695, 95, 665, 110);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  textSize(0.1);                       //Text that tells you what page you're on
  textFont(christmas);
  text("Page One", 590, 92);
}



//     Highlight behind title and page flip     //
void highlight() {
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  strokeWeight(20);
  line(20, 95, 780, 95);

  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  noStroke();
  rect(783, 70, 20, 40);
}



//     Change Ball Size     //
void ballsize() {
  textSize(40);
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Ball Size", 100, 180);

  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  line(170, 185, 750, 185);

  bsizetactile(360, 50);         //Default
  defaulttoggle();
  circle(360, 270, 100);

  bsizetactile(220, 45);
  smalltoggle();
  circle(220, 270, 90);

  bsizetactile(90, 40);
  smallesttoggle();
  circle(90, 270, 80);            //Smallest

  bsizetactile(520, 55);
  bigtoggle();
  circle(520, 270, 110);

  bsizetactile(690, 60);
  biggesttoggle();
  circle(690, 270, 120);          //Biggest

  textSize(30);
  if (boldcolorson == false) {
    fill(lnavy);
  } else fill(dnavy);
  text("Default", 360, 268);
}



//     Paddle Shape Change     //
void paddleshapec() {
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }                                 //Heading
  textSize(40);
  text("Paddles", 700, 370);
  if (boldcolorson == false) {
    stroke(lred);
  } else if (boldcolorson == true) {
    stroke(dred);
  }
  line(50, 370, 630, 370);

  fill(235);                         //Background
  stroke(235);
  rect(45, 410, 710, 150, 10);

  psctactile();                      //Circle Indicator
  ellipse(220, 450, 120, 50);

  psrtactile();                      //Rectangle Indicator
  ellipse(580, 450, 220, 50);

  stroke(230);                       //Middle Border
  line(400, 410, 400, 560);

  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);             //Sub-Headings
  text("Circular", 221, 447);
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Circular", 222.5, 445);

  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  text("Rectangluar", 577, 447);
  if (boldcolorson == false) {
    fill(lred);
  } else if (boldcolorson == true) {
    fill(dred);
  }
  text("Rectangular", 575, 445);

  fill(pcfill);                       //Displayed Paddle
  stroke(pcfill);
  circle(pshapecx, 560, 100);

  if (mode == customize) {
    pctimer = pctimer + 1;            //Change paddle color
    if (pctimer > 50 && boldcolorson == false) {
      pcfill = lyellow;
    } else if (pctimer > 50 && boldcolorson == true) {
      pcfill = dyellow;
    }
    if (pctimer < 50 && boldcolorson == false) pcfill = lred; 
    else if (pctimer < 50 && boldcolorson == true) pcfill = dred;
    if (pctimer > 100) pctimer = 0;

    custpshapec = true;
    if (custpshapec == true) {
      pshapecx = pshapecx + vpcx;     //Paddle movement
      if (pshapecx > 300) vpcx = -2;
      if (pshapecx < 150) vpcx = 2;
    }
  } else custpshapec = false;

  fill(255);                           //Hide Bottom of circle
  stroke(255);
  strokeWeight(1);
  rect(60, 563, 300, 17);
  if (boldcolorson == false) {
    fill(lyellow);
  } else fill(dyellow);
  if (boldcolorson == false) {
    stroke(lyellow);
  } else stroke(dyellow);
  rect(60, 581, 300, 20);
}



//     Rectangular Paddle Selection     //
void paddleshaper() { 
  fill(prfill);                            //Display paddle
  stroke(prfill);
  rect(pshaperx, 532, 120, 30);

  if (mode == customize) {
    prtimer = prtimer + 1;                  //Timer to change paddle color
    if (prtimer > 50 && boldcolorson == false) prfill = lred; 
    else if (prtimer > 50 && boldcolorson == true) prfill = dred;
    if (pctimer > 50 && boldcolorson == false) {
      pcfill = lyellow;
    } else if (pctimer > 50 && boldcolorson == true) {
      pcfill = dyellow;
    }
    if (prtimer > 100) prtimer = 0;

    custshaper = true;
    if (custshaper == true) {
      pshaperx = pshaperx + vprx;
      if (pshaperx > 600) vprx = -2;
      if (pshaperx < 450) vprx = 2;
    }
  } else custshaper = false;
}
