void audioSettings() {
  fade(3);
  fill(playerColour, alpha);
  textFont(benchNineLight, blockSize * 2.25);
  textAlign(LEFT, CENTER);
  text("Random Click", centerX + blockSize * 1.5, blockSize * 22.275);
  text("Button Click", centerX + blockSize * 1.5, blockSize * 25.425);
  text("Level Clear", centerX + blockSize * 1.5, blockSize * 28.575);
  text("Player Death", centerX + blockSize * 1.5, blockSize * 31.725);
  textAlign(CENTER);
  for (Sprite sprite : audioSprites) {
    sprite.display();
  }
}
