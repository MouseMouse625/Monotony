void aboutScreen() {
  fade(1);
  if (targetLevel == "buffer") {
    targetLevel = "aboutScreen";
  }
  fill(playerColour, alpha);
  tint(playerColour, alpha);
  textFont(benchNineLight, subtitleSize);
  if (!about1Shown) {
    text("This project was initiated by", centerX, centerY);
    if (fadeComplete) {
      about1Shown = true;
    }
  } else if (!about2Shown) {
    text("a computer science assessment", centerX, centerY);
    if (fadeComplete) {
      about2Shown = true;
    }
  } else if (!about3Shown) {
    text("and developed through", centerX, centerY);
    if (fadeComplete) {
      about3Shown = true;
    }
  } else if (!about4Shown) {
    text("Hack Club's", centerX, centerY);
    if (fadeComplete) {
      about4Shown = true;
    }
  } else if (!about5Shown) {
    text("Summer of Making.", centerX, centerY);
    if (fadeComplete) {
      about5Shown = true;
    }
  } else if (!about6Shown) {
    image(hcLogo, centerX, centerY);
    if (fadeComplete) {
      about6Shown = true;
    }
  } else {
    image(somLogo, centerX, centerY);
    if (fadeComplete) {
      about1Shown = false;
      about2Shown = false;
      about3Shown = false;
      about4Shown = false;
      about5Shown = false;
    }
  }
  if (time == 255) {
    if (about6Shown) {
      targetLevel = "settingsMenu";
    } else {
      targetLevel = "buffer";
    }
  }
}
