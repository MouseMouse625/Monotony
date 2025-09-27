void keyPressed() {
  if (level.startsWith("level")) {
    if (keyCode == LEFT || keyCode == 'a' || keyCode == 'A') {
      movingLeft = true;
    }
    if (keyCode == RIGHT || keyCode == 'd' || keyCode == 'D') {
      movingRight = true;
    }
    if ((keyCode == UP || keyCode == ' ' || keyCode == 'w' || keyCode == 'W') && onGround) {
      ySpeed = jumpStrength;
      if (jumpAnimationCheckbox.getState() == "checked") {
        player.triggerJumpEffect();
      }
    }
  }
}
void keyReleased() {
  if (level.startsWith("level")) {
    if (keyCode == LEFT|| keyCode == 'a' || keyCode == 'A') {
      movingLeft = false;
    }
    if (keyCode == RIGHT || keyCode == 'd' || keyCode == 'D') {
      movingRight = false;
    }
  }
}
void mousePressed() {
  if (alpha == 255) {
    if (level == "mainMenu") {
      if (hoverCheck(startButton)) {
        targetLevel = "level1";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(exitButton)) {
        targetLevel = "exit";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(levelsButton) && !levelsButton.btnL) {
        targetLevel = "levelSelect";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(achievementsButton)) {
        targetLevel = "achievements";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(tutorialButton)) {
        targetLevel = "tutorial";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(settingsButton)) {
        targetLevel = "settingsMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "levelSelect") {
      if (hoverCheck(oneButton)) {
        targetLevel = "level1";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twoButton)) {
        targetLevel = "level2";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(threeButton)) {
        targetLevel = "level3";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fourButton)) {
        targetLevel = "level4";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fiveButton)) {
        targetLevel = "level5";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(sixButton)) {
        targetLevel = "level6";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(sevenButton)) {
        targetLevel = "level7";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(eightButton)) {
        targetLevel = "level8";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(nineButton)) {
        targetLevel = "level9";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(tenButton)) {
        targetLevel = "level10";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(elevenButton)) {
        targetLevel = "level11";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twelveButton)) {
        targetLevel = "level12";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fourteenButton)) {
        targetLevel = "level14";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fifteenButton)) {
        targetLevel = "level15";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(sixteenButton)) {
        targetLevel = "level16";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(seventeenButton)) {
        targetLevel = "level17";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(eighteenButton)) {
        targetLevel = "level18";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(nineteenButton)) {
        targetLevel = "level19";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentyButton)) {
        targetLevel = "level20";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentyoneButton)) {
        targetLevel = "level21";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentytwoButton)) {
        targetLevel = "level22";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentythreeButton)) {
        targetLevel = "level23";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentyfourButton)) {
        targetLevel = "level24";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentyfiveButton)) {
        targetLevel = "level25";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentysixButton)) {
        targetLevel = "level26";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentysevenButton)) {
        targetLevel = "level27";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentyeightButton)) {
        targetLevel = "level28";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(twentynineButton)) {
        targetLevel = "level29";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtyButton)) {
        targetLevel = "level30";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtyoneButton)) {
        targetLevel = "level31";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtytwoButton)) {
        targetLevel = "level32";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtythreeButton)) {
        targetLevel = "level33";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtyfourButton)) {
        targetLevel = "level34";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtyfiveButton)) {
        targetLevel = "level35";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtysixButton)) {
        targetLevel = "level36";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtysevenButton)) {
        targetLevel = "level37";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtyeightButton)) {
        targetLevel = "level38";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(thirtynineButton)) {
        targetLevel = "level39";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fortyButton)) {
        targetLevel = "level40";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fortyoneButton)) {
        targetLevel = "level41";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(fortytwoButton)) {
        targetLevel = "level42";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(backButton)) {
        targetLevel = "mainMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "achievements") {
      if (hoverCheck(backButton)) {
        targetLevel = "mainMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } 
    } else if (level == "settingsMenu") {
      if (hoverCheck(backButton)) {
        targetLevel = "mainMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(themeButton)) {
        targetLevel = "themeSettings";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(graphicsButton)) {
        targetLevel = "graphicsSettings";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(audioButton)) {
        targetLevel = "audioSettings";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(aboutButton)) {
        targetLevel = "aboutScreen";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "themeSettings") {
      if (hoverCheck(backButton)) {
        targetLevel = "settingsMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(cyberpunkButton)) {
        theme = "cyberpunk";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(lightButton)) {
        theme = "light";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(darkButton)) {
        theme = "dark";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(greyscaleButton)) {
        theme = "greyscale";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(defaultButton)) {
        theme = "default";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(sunsetButton)) {
        theme = "sunset";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(forestButton)) {
        theme = "forest";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else if (hoverCheck(iceButton)) {
        theme = "ice";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "graphicsSettings") {
      if (hoverCheck(backButton)) {
        targetLevel = "settingsMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "audioSettings") {
      if (hoverCheck(backButton)) {
        targetLevel = "settingsMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else if (level == "aboutScreen") {
      if (hoverCheck(backButton)) {
        targetLevel = "settingsMenu";
        if (buttonClickCheckbox.getState() == "checked") {
          buttonClick.play();
        }
      } else {
        if (randomClickCheckbox.getState() == "checked") {
          randomClick.play();
        }
      }
    } else {
      if (randomClickCheckbox.getState() == "checked") {
        randomClick.play();
      }
    }
  } else {
    if (randomClickCheckbox.getState() == "checked") {
        randomClick.play();
    }
  }
}
