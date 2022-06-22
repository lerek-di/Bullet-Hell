void intro() {
  imageMode(CORNER);
  background(#000000);
  image(img, 0, 0);
  
  fill(#000000, 0);
  stroke(#FFFFFF);
  strokeWeight(5);
  rect(250, 500, 100, 50);
  fill(#FFFFFF);
  textSize(28);
  text("PLAY", 250, 510);
  
  setup();
}

void introClicks() {
  if (mouseX > 200 && mouseX < 300 && mouseY > 475 && mouseY < 525) mode = GAME;
}
