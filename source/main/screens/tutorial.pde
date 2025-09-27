void tutorial() {
  fade(1);
  if (targetLevel == "buffer") {
    targetLevel = "tutorial";
  }
  fill(playerColour, alpha);
  textFont(benchNineLight, subtitleSize);
  if (!tutorial1Shown) {
    text("WASD, arrow keys, or spacebar to move.", centerX, centerY);
    if (fadeComplete) {
      tutorial1Shown = true;
      playerX = centerX;
      playerY = blockSize * 30.75;
    }
  } else if (!tutorial2Shown) {
    text("This is the player, the sprite controlled by you.", centerX, centerY);
    if (fadeComplete) {
      tutorial2Shown = true;
    }
    for (Sprite sprite : tutorial2Sprites) {
      sprite.display();
    }
  } else if (!tutorial3Shown) {
    text("This is the level clear area, and the objective of each level is to contact it.", centerX, centerY);
    if (fadeComplete) {
      tutorial3Shown = true;
    }
    for (Sprite sprite : tutorial3Sprites) {
      sprite.display();
    }
  } else if (!tutorial4Shown) {
    text("This is a platform, essentially a hovering block that keeps you from falling.", centerX, centerY);
    if (fadeComplete) {
      tutorial4Shown = true;
    }
    for (Sprite sprite : tutorial4Sprites) {
      sprite.display();
    }
  } else if (!tutorial5Shown) {
    text("This is a death platform, a quote on quote platform that kills you on contact.", centerX, centerY);
    if (fadeComplete) {
      tutorial5Shown = true;
    }
    for (Sprite sprite : tutorial5Sprites) {
      sprite.display();
    }
  } else {
    text("Good luck, but it's not gonna help you on your futile journey.", centerX, centerY);
    if (fadeComplete) {
      tutorial1Shown = false;
      tutorial2Shown = false;
      tutorial3Shown = false;
      tutorial4Shown = false;
      tutorial5Shown = false;
    }
  }
  if (time == 255) {
    if (tutorial5Shown) {
      targetLevel = "mainMenu";
    } else {
      targetLevel = "buffer";
    }
  }
}
