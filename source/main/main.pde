import processing.sound.*;
import java.io.*;
void draw() {
  setColours(true);
  backdrop();
  switch(level) {
    case "level1":
      levelA(level1ClearArea, level1Sprites);
      break;
    case "level2":
      levelA(level2ClearArea, level2Sprites);
      break;
    case "level3":
      levelB(level3ClearArea, level3Sprites, level3Platforms);
      break;
    case "level4":
      levelB(level4ClearArea, level4Sprites, level4Platforms);
      break;
    case "level5":
      levelB(level5ClearArea, level5Sprites, level5Platforms);
      break;
    case "level6":
      levelB(level6ClearArea, level6Sprites, level6Platforms);
      break;
    case "level7":
      levelB(level7ClearArea, level7Sprites, level7Platforms);
      break;
    case "level8":
      levelB(level8ClearArea, level8Sprites, level8Platforms);
      break;
    case "level9":
      levelB(level9ClearArea, level9Sprites, level9Platforms);
      break;
    case "level10":
      levelB(level10ClearArea, level10Sprites, level10Platforms);
      break;
    case "level11":
      levelB(level11ClearArea, level11Sprites, level11Platforms);
      break;
    case "level12":
      levelB(level12ClearArea, level12Sprites, level12Platforms);
      break;
    case "level13":
      levelB(level13ClearArea, level13Sprites, level13Platforms);
      break;
    case "level14":
      levelB(level14ClearArea, level14Sprites, level14Platforms);
      break;
    case "level15":
      levelB(level15ClearArea, level15Sprites, level15Platforms);
      break;
    case "level16":
      levelB(level16ClearArea, level16Sprites, level16Platforms);
      break;
    case "level17":
      levelB(level17ClearArea, level17Sprites, level17Platforms);
      break;
    case "level18":
      levelB(level18ClearArea, level18Sprites, level18Platforms);
      break;
    case "level19":
      levelB(level19ClearArea, level19Sprites, level19Platforms);
      break;
    case "level20":
      levelB(level20ClearArea, level20Sprites, level20Platforms);
      break;
    case "level21":
      levelB(level21ClearArea, level21Sprites, level21Platforms);
      break;
    case "level22":
      levelB(level22ClearArea, level22Sprites, level22Platforms);
      break;
    case "level23":
      levelB(level23ClearArea, level23Sprites, level23Platforms);
      break;
    case "level24":
      levelB(level24ClearArea, level24Sprites, level24Platforms);
      break;
    case "level25":
      levelB(level25ClearArea, level25Sprites, level25Platforms);
      break;
    case "level26":
      levelC(level26ClearArea, level26Sprites, level26DeathPlatforms);
      break;
    case "level27":
      levelC(level27ClearArea, level27Sprites, level27DeathPlatforms);
      break;
    case "level28":
      levelC(level28ClearArea, level28Sprites, level28DeathPlatforms);
      break;
    case "level29":
      levelC(level29ClearArea, level29Sprites, level29DeathPlatforms);
      break;
    case "level30":
      levelD(level30ClearArea, level30Sprites, level30Platforms, level30DeathPlatforms);
      break;
    case "level31":
      levelD(level31ClearArea, level31Sprites, level31Platforms, level31DeathPlatforms);
      break;
    case "level32":
      levelD(level32ClearArea, level32Sprites, level32Platforms, level32DeathPlatforms);
      break;
    case "level33":
      levelD(level33ClearArea, level33Sprites, level33Platforms, level33DeathPlatforms);
      break;
    case "level34":
      levelD(level34ClearArea, level34Sprites, level34Platforms, level34DeathPlatforms);
      break;
    case "level35":
      levelD(level35ClearArea, level35Sprites, level35Platforms, level35DeathPlatforms);
      break;
    case "level36":
      levelD(level36ClearArea, level36Sprites, level36Platforms, level36DeathPlatforms);
      break;
    case "level37":
      levelD(level37ClearArea, level37Sprites, level37Platforms, level37DeathPlatforms);
      break;
    case "level38":
      levelD(level38ClearArea, level38Sprites, level38Platforms, level38DeathPlatforms);
      break;
    case "level39":
      levelD(level39ClearArea, level39Sprites, level39Platforms, level39DeathPlatforms);
      break;
    case "level40":
      levelD(level40ClearArea, level40Sprites, level40Platforms, level40DeathPlatforms);
      break;
    case "level41":
      levelD(level41ClearArea, level41Sprites, level41Platforms, level41DeathPlatforms);
      break;
    case "level42":
      levelD(level42ClearArea, level42Sprites, level42Platforms, level42DeathPlatforms);
      break;
    case "intro":
      intro();
      break;
    case "mainMenu":
      menu();
      break;
    case "levelSelect":
      levelSelect();
      break;
    case "achievements":
      achievements();
      break;
    case "tutorial":
      tutorial();
      break;
    case "settingsMenu":
      gameSettings();
      break;
    case "themeSettings":
      themeSettings();
      break;
    case "graphicsSettings":
      graphicsSettings();
      break;
    case "audioSettings":
      audioSettings();
      break;
    case "aboutScreen":
      aboutScreen();
      break;
    case "outro":
      end();
      break;
    default:
      break;
  }
  cursor.display();
}
