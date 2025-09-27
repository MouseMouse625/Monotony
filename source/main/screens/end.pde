void end() {
  fade(1);
  fill(playerColour, alpha);
  textFont(benchNineLight, titleSize);
  text("Cyend", centerX, titleHeight);
  textFont(benchNineLight, subtitleSize);
  text("This might not be the end. You might still have some achievements to collect. If not, goodbye.", centerX, subtitleHeight, displayWidth, centerY);
  if (time == 255) {
    targetLevel = "mainMenu";
  }
}
