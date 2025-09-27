void fade(int speed) {
  int prevTime;
  float currentTime = time;
  float currentSpeed;
  boolean switchingLevels;
  if (time < 255) {
    currentSpeed = map(currentTime, 0, 255, speed * 3, speed);
  } else if (time > 255) {
    currentSpeed = map(currentTime, 255, 510, speed, speed * 3);
  } else {
    currentSpeed = speed;
  }
  prevTime = (int)currentTime;
  if (level.startsWith("level")) {
    if ((currentTime + currentSpeed) > 255 && currentTime < 255) {
      currentTime = 255;
    }
    if (!(!(levelClears.get(int(level.substring(5)) - 1) || levelDeaths.get(int(level.substring(5)) - 1)) && currentTime == 255 && levelNameShown)) {
      currentTime = min(510, currentTime + currentSpeed);
    }
  } else if (currentTime != 255 || level != targetLevel) {
    if ((currentTime + currentSpeed) > 255 && currentTime < 255) {
      currentTime = 255;
    } else {
      currentTime = min(510, currentTime + currentSpeed);
    }
  }
  time = round(currentTime);
  if (time <= 255 && alpha < 255) {
    alpha = round(min(255, alpha + currentSpeed));
  } else if (time > 255) {
    alpha = round(max(0, alpha - currentSpeed));
  }
  if (prevTime <= 510 && time >= 510) {
    fadeComplete = true;
  } else {
    fadeComplete = false;
  }
  if (time >= 510) {
    if (level == targetLevel) {
      switchingLevels = false;
    } else {
      switchingLevels = true;
    }
    time = 0;
    alpha = 0;
    playerX = halfBlockSize;
    playerY = bottom;
    if (level.startsWith("level") && !switchingLevels && !levelNameShown) {
      levelNameShown = true;
    }
    if (level.startsWith("level") && (levelClears.get(int(level.substring(5)) - 1) || levelDeaths.get(int(level.substring(5)) - 1)) && levelNameShown) {
      levelNameShown = false;
    }
    level = targetLevel;
  }
}
void backdrop() {
  beginShape();
  fill(skyTopColour);
  vertex(0, 0);
  vertex(displayWidth, 0);
  fill(skyBottomColour);
  vertex(displayWidth, displayHeight);
  vertex(0, displayHeight);
  endShape();
  targetCamX = -playerX + displayWidth / 2;
  targetCamY = -playerY + displayHeight * 1.25;
  for (Mountain mount : mountains) {
    mount.display(targetCamX, targetCamY);
  }
}
void levelTitle() {
  if (!levelNameShown) {
    fade(1);
    fill(255, alpha);
    textFont(benchNineLight, titleSize);
    text(levelTitles.get(int(level.substring(5)) - 1), centerX, titleHeight);
    textFont(benchNineLight, subtitleSize);
    text(levelDescriptions.get(int(level.substring(5)) - 1), centerX, subtitleHeight, displayWidth, centerY);
  }
}

