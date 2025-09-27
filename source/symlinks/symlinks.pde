import java.io.*;
File sketchDir;
void setup() {
  sketchDir = new File(new File(sketchPath("")).getParentFile().getAbsolutePath());
  createSymlinks(sketchDir);
  exit();
}
