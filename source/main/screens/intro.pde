void intro() {
  fade(1);
  fill(playerColour, alpha);
  tint(playerColour, alpha);
  textFont(benchNineLight, titleSize);
  text("Monotony", centerX, titleHeight);
  textFont(benchNineLight, subtitleSize);
  text("A Minimalist Platformer", centerX, subtitleHeight, centerX, centerY);
  if (time == 255) {
    targetLevel = "mainMenu";
  }
}
