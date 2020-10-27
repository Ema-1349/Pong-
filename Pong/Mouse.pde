void mouseReleased() {
  if (mode == intro) {
    introclick();
  } else if (mode == game) {
    gameclick();
  } else if (mode == gameover) {
    gameoverclick();
  } else if (mode == pause) {
    pauseclick();
  } else if (mode == customize) {
    customizeclick();
  } else if (mode == customize2) {
    customize2click();
  } else if (mode == help) {
    helpclick(); 
  }
}
