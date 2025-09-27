void createSymlinks(File sketchDir) {
  File screensDir = new File(sketchDir, "main/screens");
  File entitiesDir = new File(sketchDir, "main/entities");
  for (int i = 1; i <= 22; i++) {
    File target;
    File link;
    String filename;
    if (i <= 11) {
      switch (i) {
        case 1:
          filename = "about.pde";
          break;
        case 2:
          filename = "achievements.pde";
          break;
        case 3:
          filename = "audio.pde";
          break;
        case 4:
          filename = "end.pde";
          break;
        case 5:
          filename = "graphics.pde";
          break;
        case 6:
          filename = "intro.pde";
          break;
        case 7:
          filename = "levelSelect.pde";
          break;
        case 8:
          filename = "menu.pde";
          break;
        case 9:
          filename = "settings.pde";
          break;
        case 10:
          filename = "theme.pde";
          break;
        case 11:
          filename = "tutorial.pde";
          break;
        default:
          filename = "random.pde";
          break;
      }
      target = new File(screensDir, filename);
    } else {
      switch (i) {
        case 12:
          filename = "achievement.pde";
          break;
        case 13:
          filename = "button.pde";
          break;
        case 14:
          filename = "checkbox.pde";
          break;
        case 15:
          filename = "cursor.pde";
          break;
        case 16:
          filename = "deathPlatform.pde";
          break;
        case 17:
          filename = "levelClearArea.pde";
          break;
        case 18:
          filename = "mountain.pde";
          break;
        case 19:
          filename = "platform.pde";
          break;
        case 20:
          filename = "player.pde";
          break;
        case 21:
          filename = "polygon.pde";
          break;
        case 22:
          filename = "sprite.pde";
          break;
        default:
          filename = "random.pde";
          break;
      }
      target = new File(entitiesDir, filename);
    }
    link = new File(sketchDir, "main/" + filename);
    try {
      if (link.exists() && !link.delete()) {
        println("Warning: Couldn't delete existing " + filename);
      }
      if (System.getProperty("os.name").startsWith("Windows")) {
        execCommand(new String[]{
          "cmd", "/c", "mklink",
          "\"" + link.getAbsolutePath() + "\"",
          "\"" + target.getAbsolutePath() + "\""
        });
      } else {
        execCommand(new String[]{
          "ln", "-s",
          target.getAbsolutePath(),
          link.getAbsolutePath()
        });
      }
    } catch (Exception e) {
      println("Error with " + filename + ": " + e.getMessage());
    }
  }
}
void execCommand(String[] cmd) throws IOException, InterruptedException {
  Process p = Runtime.getRuntime().exec(cmd);
  new StreamGobbler(p.getErrorStream()).start();
  new StreamGobbler(p.getInputStream()).start();
  if (p.waitFor() != 0) {
    throw new IOException("Command failed: " + String.join(" ", cmd));
  }
}
