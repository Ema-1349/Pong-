void help() {
  helpmsc.play();
  background(255);

  textFont(mono);                                                      //Title
  textSize(80);
  fill(0);
  text("Help", 400, 50);

  strokeWeight(3);                                                     //Border Deco
  line(50, 50, 300, 50);
  line(500, 50, 750, 50);
  line(50, 50, 50, 565);
  line(750, 50, 750, 565);
  line(50, 565, 750, 565);

  if (mouseX > 20 && mouseX < 120 && mouseY > 20 && mouseY < 70) {     //Back button
    strokeWeight(5);
  } else strokeWeight(3);
  fill(255);
  stroke(0);
  rect(20, 20, 100, 50, 10);
  fill(0);
  textSize(35);
  text("B a c k", 70, 42);
  
  fill(0);                                                             //Headings
  textSize(40);
  text("Controls",150,140);
  strokeWeight(1);
  line(260,143,700,143);
  
  text("Aim of the Game",190,290);
  line(340,293,700,293);
  
  textSize(26);                                                         //Text
  text("keys control the left paddle  (yellow paddle)",380,190);
  text("keys control the right paddle  (red paddle)",380,230);
  
  text("SCORE more points thank the opponent to WIN the game",360,340);
  text("FIRST to score  THREE  points  (by default)  wins",340,380);
  
  text("Play against a HUMAN by selecting MULTIPLAYER",340,445);
  text("Play against AI by selecting SINGLEPLAYER",323,481);
  text("More customization settings available under  CUSTOMIZE",385,516);
  
  textSize(30);
  text("W + S",130,190);
  text("UP + DOWN",120,230);
  
  textSize(20);
  text("( Winning score can be changed under 'CUSTOMIZE' )",300,408);
}

void helpclick() {
  if (mouseX > 20 && mouseX < 120 && mouseY > 20 && mouseY < 70) {
    mode = intro;
    intromsc.play();
    helprewind();
    pressplayrewind();
  }
}
