String getParentPath(int gen) {
  int remainingGen = gen;
  File sketchDir = new File(sketchPath(""));
  while (remainingGen > 0) {
    sketchDir = sketchDir.getParentFile();
    remainingGen--;
  }
  return sketchDir.getAbsolutePath() + File.separator;
}
color getColour(String type) {
  if (type == "player") {
    return playerColour;
  } else if (type == "levelClearArea") {
    return levelClearAreaColour;
  } else if (type == "platform") {
    return platformColour;
  } else if (type == "deathPlatform") {
    return deathPlatformColour;
  } else {
    return color(0);
  }
}
void setColours(boolean initialised) {
  if (previousTheme != theme) {
    if (theme == "cyberpunk") {
      backgroundColour = color(20, 5, 30);
      playerColour = color(0, 255, 255);
      levelClearAreaColour = color(255, 0, 255);
      platformColour = color(80, 0, 100);
      deathPlatformColour = color(255, 50, 0);
      mountain1Colour = color(30, 0, 40);
      mountain2Colour = color(60, 0, 80);
      mountain3Colour = color(90, 0, 120);
      mountain4Colour = color(120, 0, 160);
      skyTopColour = color(0, 0, 10);
      skyBottomColour = color(100, 0, 130);
    } else if (theme == "light") {
      backgroundColour = color(240, 240, 245);
      playerColour = color(40, 40, 50);
      levelClearAreaColour = color(100, 180, 220);
      platformColour = color(200, 200, 210);
      deathPlatformColour = color(220, 120, 130);
      mountain1Colour = color(220, 220, 230);
      mountain2Colour = color(210, 210, 220);
      mountain3Colour = color(200, 200, 210);
      mountain4Colour = color(190, 190, 200);
      skyTopColour = color(220, 230, 240);
      skyBottomColour = color(240, 240, 245);
    } else if (theme == "dark") {
      backgroundColour = color(15);
      playerColour = color(255);
      levelClearAreaColour = color(0, 200, 255);
      platformColour = color(40);
      deathPlatformColour = color(255, 40, 40);
      mountain1Colour = color(10);
      mountain2Colour = color(20);
      mountain3Colour = color(30);
      mountain4Colour = color(40);
      skyTopColour = color(0);
      skyBottomColour = color(15);
    } else if (theme == "greyscale") {
      backgroundColour = color(95);
      playerColour = color(225);
      levelClearAreaColour = color(490 / 3);
      platformColour = color(190 / 3);
      deathPlatformColour = color(310 / 3);
      mountain1Colour = color(35);
      mountain2Colour = color(55);
      mountain3Colour = color(75);
      mountain4Colour = color(95);
      skyTopColour = color(50 / 3);
      skyBottomColour = color(40);
      } else if (theme == "default") {
      backgroundColour = color(85, 95, 105);
      playerColour = color(215, 225, 235);
      levelClearAreaColour = color(120, 170, 200);
      platformColour = color(50, 60, 80);
      deathPlatformColour = color(150, 70, 90);
      mountain1Colour = color(25, 35, 45);
      mountain2Colour = color(45, 55, 65);
      mountain3Colour = color(65, 75, 85);
      mountain4Colour = color(85, 95, 105);
      skyTopColour = color(10, 15, 25);
      skyBottomColour = color(30, 40, 50);
    } else if (theme == "sunset") {
      backgroundColour = color(240, 180, 120);
      playerColour = color(255, 240, 180);
      levelClearAreaColour = color(255, 100, 80);
      platformColour = color(180, 90, 60);
      deathPlatformColour = color(200, 60, 40);
      mountain1Colour = color(160, 70, 50);
      mountain2Colour = color(180, 80, 60);
      mountain3Colour = color(200, 90, 70);
      mountain4Colour = color(220, 100, 80);
      skyTopColour = color(40, 20, 60);
      skyBottomColour = color(240, 130, 90);
    } else if (theme == "forest") {
      backgroundColour = color(100, 130, 90);
      playerColour = color(230, 240, 210);
      levelClearAreaColour = color(80, 160, 120);
      platformColour = color(60, 80, 50);
      deathPlatformColour = color(160, 70, 60);
      mountain1Colour = color(40, 60, 30);
      mountain2Colour = color(50, 70, 40);
      mountain3Colour = color(60, 80, 50);
      mountain4Colour = color(70, 90, 60);
      skyTopColour = color(20, 40, 30);
      skyBottomColour = color(80, 110, 90);
    } else if (theme == "ice") {
      backgroundColour = color(200, 220, 240);
      playerColour = color(30, 50, 80);
      levelClearAreaColour = color(170, 220, 255);
      platformColour = color(180, 200, 220);
      deathPlatformColour = color(100, 150, 200);
      mountain1Colour = color(180, 200, 220);
      mountain2Colour = color(190, 210, 230);
      mountain3Colour = color(200, 220, 240);
      mountain4Colour = color(210, 230, 250);
      skyTopColour = color(180, 200, 220);
      skyBottomColour = color(210, 230, 250);
    }
    if (initialised) {
      mountain1.rangeColor = mountain1Colour;
      mountain2.rangeColor = mountain2Colour;
      mountain3.rangeColor = mountain3Colour;
      mountain4.rangeColor = mountain4Colour;
      for (int row = 0; row < 5; row++) {
        for (int col = 0; col < 8; col++) {
          sections[row][col] = loadImage(getParentPath(2) + "data/images/sections/" + theme + File.separator + theme + "Section[" + row + "][" + col + "].png");
        }
      }
    }
    previousTheme = theme;
  }
}
int getLevel(String levelString) {
  if (levelString.startsWith("level")) {
    return int(levelString.substring(5)) + 11;
  } else {
    switch(levelString) {
      case "intro":
        return 1;
      case "mainMenu":
        return 2;
      case "levelSelect":
        return 3;
      case "achievements":
        return 4;
      case "tutorial":
        return 5;
      case "settingsMenu":
        return 6;
      case "themeSettings":
        return 7;
      case "graphicsSettings":
        return 8;
      case "audioSettings":
        return 9;
      case "aboutScreen":
        return 10;
      case "outro":
        return 11;
      default:
        return 0;
    }
  }
}
int getTheme(String themeString) {
  switch(theme) {
    case "cyberpunk":
      return 0;
    case "light":
      return 1;
    case "dark":
      return 2;
    case "greyscale":
      return 3;
    case "default":
      return 4;
    case "sunset":
      return 5;
    case "forest":
      return 6;
    case "ice":
      return 7;
    default:
      return -1;
  }
}
void levelA(LevelClearArea levelNClearArea, ArrayList<Sprite> levelNSprites) {
  levelTitle();
  if(levelNameShown) {
    fade(5);
    if (collisionCheck(levelNClearArea) && !levelClears.get(int(level.substring(5)) - 1)) {
      if (int(level.substring(5)) < levelClears.size()) {
        targetLevel = "level" + (int(level.substring(5)) + 1);
      } else {
        targetLevel = "outro";
        levelsButton.btnL = false;
      }
      levelClears.set(int(level.substring(5)) - 1, true);
      if (levelClearCheckbox.getState() == "checked") {
        levelClear.play();
      }
    }
    if (level.startsWith("level")) {
      if (!levelClears.get(int(level.substring(5)) - 1)) {
        if (movingLeft) {
          playerX -= xSpeed;
        }
        if (movingRight) {
          playerX += xSpeed;
        }
        ySpeed += gravity;
        playerY += ySpeed;
        if (playerY >= bottom) {
          playerY = bottom;
          ySpeed = 0;
          onGround = true;
        } else {
          onGround = false;
        }
        if (playerX > right) {
          playerX = right;
        }
        if (playerX < halfBlockSize) {
          playerX = halfBlockSize;
        }
      }
    }
    for (Sprite sprite : levelNSprites) {
      sprite.display();
    }
  }
}
void levelB(LevelClearArea levelNClearArea, ArrayList<Sprite> levelNSprites, ArrayList<Platform> levelNPlatforms) {
  levelTitle();
  if(levelNameShown) {
    fade(5);
    if (collisionCheck(levelNClearArea) && !levelClears.get(int(level.substring(5)) - 1)) {
      if (int(level.substring(5)) < levelClears.size()) {
        targetLevel = "level" + (int(level.substring(5)) + 1);
      } else {
        targetLevel = "outro";
        levelsButton.btnL = false;
      }
      levelClears.set(int(level.substring(5)) - 1, true);
      if (levelClearCheckbox.getState() == "checked") {
        levelClear.play();
      }
    }
    if (level.startsWith("level")) {
      if (!levelClears.get(int(level.substring(5)) - 1)) {
        if (movingLeft) {
          playerX -= xSpeed;
        }
        if (movingRight) {
          playerX += xSpeed;
        }
        ySpeed += gravity;
        playerY += ySpeed;
        if (playerY >= bottom) {
          playerY = bottom;
          ySpeed = 0;
          onGround = true;
        } else {
          onGround = false;
        }
        if (playerX > right) {
          playerX = right;
        }
        if (playerX < halfBlockSize) {
          playerX = halfBlockSize;
        }
      }
    }
    for (Platform plat : levelNPlatforms) {
      if (collisionCheck(plat)) {
        if (ySpeed > 0) {
          playerY = plat.spriteY - plat.spriteH / 2 - 10;
          onGround = true;
          ySpeed = 0;
        } else if (ySpeed < 0) {
          playerY = plat.spriteY + plat.spriteH / 2 + 10;
          ySpeed = 0;
        }
        if (playerX + 10 < plat.spriteX - plat.spriteW || playerX - 10 > plat.spriteX + plat.spriteW) {
          onGround = false;
        }
      }
    }
    for (Sprite sprite : levelNSprites) {
      sprite.display();
    }
  }
}
void levelC(LevelClearArea levelNClearArea, ArrayList<Sprite> levelNSprites, ArrayList<DeathPlatform> levelNDeathPlatforms) {
  levelTitle();
  if(levelNameShown) {
    fade(5);
    if (collisionCheck(levelNClearArea) && !levelClears.get(int(level.substring(5)) - 1)) {
      if (int(level.substring(5)) < levelClears.size()) {
        targetLevel = "level" + (int(level.substring(5)) + 1);
      } else {
        targetLevel = "outro";
        levelsButton.btnL = false;
      }
      levelClears.set(int(level.substring(5)) - 1, true);
      if (levelClearCheckbox.getState() == "checked") {
        levelClear.play();
      }
    }
    if (level.startsWith("level")) {
      if (levelDeaths.get(int(level.substring(5)) - 1) && alpha <= 0) {
        levelDeaths.set(int(level.substring(5)) - 1, false);
        for (int levelClear = 0; levelClear < levelClears.size(); levelClear++) {
          levelClears.set(levelClear, false);
        }
      }
    }
    if (level.startsWith("level")) {
      if (!levelClears.get(int(level.substring(5)) - 1) && !levelDeaths.get(int(level.substring(5)) - 1)) {
        if (movingLeft) {
          playerX -= xSpeed;
        }
        if (movingRight) {
          playerX += xSpeed;
        }
        ySpeed += gravity;
        playerY += ySpeed;
        if (playerY >= bottom) {
          playerY = bottom;
          ySpeed = 0;
          onGround = true;
        } else {
          onGround = false;
        }
        if (playerX > right) {
          playerX = right;
        }
        if (playerX < halfBlockSize) {
          playerX = halfBlockSize;
        }
      }
    }
    for (DeathPlatform deathPlat : levelNDeathPlatforms) {
      if (collisionCheck(deathPlat) && !levelDeaths.get(int(level.substring(5)) - 1)) {
        levelDeaths.set(int(level.substring(5)) - 1, true);
        if (playerDeathCheckbox.getState() == "checked") {
          playerDeath.play();
        }
        targetLevel = "level1";
      }
    }
    for (Sprite sprite : levelNSprites) {
      sprite.display();
    }
  }
}
void levelD(LevelClearArea levelNClearArea, ArrayList<Sprite> levelNSprites, ArrayList<Platform> levelNPlatforms, ArrayList<DeathPlatform> levelNDeathPlatforms) {
  levelTitle();
  if(levelNameShown) {
    fade(5);
    if (collisionCheck(levelNClearArea) && !levelClears.get(int(level.substring(5)) - 1)) {
      if (int(level.substring(5)) < levelClears.size()) {
        targetLevel = "level" + (int(level.substring(5)) + 1);
      } else {
        targetLevel = "outro";
        levelsButton.btnL = false;
      }
      levelClears.set(int(level.substring(5)) - 1, true);
      if (levelClearCheckbox.getState() == "checked") {
        levelClear.play();
      }
    }
    if (level.startsWith("level")) {
      if (levelDeaths.get(int(level.substring(5)) - 1) && alpha <= 0) {
        levelDeaths.set(int(level.substring(5)) - 1, false);
        for (int levelClear = 0; levelClear < levelClears.size(); levelClear++) {
          levelClears.set(levelClear, false);
        }
      }
    }
    if (level.startsWith("level")) {
      if (!levelClears.get(int(level.substring(5)) - 1) && !levelDeaths.get(int(level.substring(5)) - 1)) {
        if (movingLeft) {
          playerX -= xSpeed;
        }
        if (movingRight) {
          playerX += xSpeed;
        }
        ySpeed += gravity;
        playerY += ySpeed;
        if (playerY >= bottom) {
          playerY = bottom;
          ySpeed = 0;
          onGround = true;
        } else {
          onGround = false;
        }
        if (playerX > right) {
          playerX = right;
        }
        if (playerX < halfBlockSize) {
          playerX = halfBlockSize;
        }
      }
    }
    for (Platform plat : levelNPlatforms) {
      if (collisionCheck(plat)) {
        if (ySpeed > 0) {
          playerY = plat.spriteY - plat.spriteH / 2 - 10;
          onGround = true;
          ySpeed = 0;
        } else if (ySpeed < 0) {
          playerY = plat.spriteY + plat.spriteH / 2 + 10;
          ySpeed = 0;
        }
        if (playerX + 10 < plat.spriteX - plat.spriteW || playerX - 10 > plat.spriteX + plat.spriteW) {
          onGround = false;
        }
      }
    }
    for (DeathPlatform deathPlat : levelNDeathPlatforms) {
      if (collisionCheck(deathPlat) && !levelDeaths.get(int(level.substring(5)) - 1)) {
        levelDeaths.set(int(level.substring(5)) - 1, true);
        if (playerDeathCheckbox.getState() == "checked") {
          playerDeath.play();
        }
        targetLevel = "level1";
      }
    }
    for (Sprite sprite : levelNSprites) {
      sprite.display();
    }
  }
}
