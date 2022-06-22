void gameover() {
  objects.clear();
  
  fill(#001840, 100);
  rect(width/2, height/2, width, height);
  
  fill(#001840);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(250, 500, 100, 50);
  fill(#FFFFFF);
  textSize(24);
  text("RESTART", 250, 505);
  fill(#FFFFFF);
  textSize(44);
  String Score = "Score: " + score;
  text(Score, 250, 300);
}

void gameoverClicks() {
  if (mouseX > 200 && mouseX < 300 && mouseY > 475 && mouseY < 525) mode = INTRO;
}
