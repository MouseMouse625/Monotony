void drawGradient(int themeIndex) {
  color[] colours;
  switch(themeIndex) {
    case 0:
      colours = new color[] {color(0, 0, 10), color(100, 0, 130)}; 
      break;
    case 1:
      colours = new color[] {color(220, 230, 240), color(240, 240, 245)}; 
      break;
    case 2:
      colours = new color[] {color(0), color(15)}; 
      break;
    case 3:
      colours = new color[] {color(50 / 3), color(40)}; 
      break;
    case 4:
      colours = new color[] {color(10, 15, 25), color(30, 40, 50)}; 
      break;
    case 5:
      colours = new color[] {color(40, 20, 60), color(240, 130, 90)}; 
      break;
    case 6:
      colours = new color[] {color(20, 40, 30), color(80, 110, 90)}; 
      break;
    case 7:
      colours = new color[] {color(180, 200, 220), color(210, 230, 250)}; 
      break;
    default: 
      colours = new color[] {color(0), color(255)}; 
  }
  for (int y = 0; y < height; y++) {
    float inter = map(y, 0, height, 0, 1);
    color c = lerpColor(colours[0], colours[1], inter);
    stroke(c);
    line(0, y, width, y);
  }
}
void drawShapes(int themeIndex, PGraphics target) {
  color[] colours;
  switch(themeIndex) {
    case 0:
      colours = new color[] {color(20, 5, 30), color(0, 255, 255), color(255, 0, 255), color(80, 0, 100), color(255, 50, 0), color(30, 0, 40), color(60, 0, 80), color(90, 0, 120), color(120, 0, 160)};
      break;
    case 1:
      colours = new color[] {color(240, 240, 245), color(40, 40, 50), color(100, 180, 220), color(200, 200, 210), color(220, 120, 130), color(220, 220, 230), color(210, 210, 220), color(200, 200, 210), color(190, 190, 200)};
      break;
    case 2:
      colours = new color[] {color(15), color(255), color(0, 200, 255), color(40), color(255, 40, 40), color(10), color(20), color(30), color(40)};
      break;
    case 3:
      colours = new color[] {color(95), color(225), color(490 / 3), color(190 / 3), color(310 / 3), color(35), color(55), color(75), color(95)};
      break;
    case 4:
      colours = new color[] {color(85, 95, 105), color(215, 225, 235), color(120, 170, 200), color(50, 60, 80), color(150, 70, 90), color(25, 35, 45), color(45, 55, 65), color(65, 75, 85), color(85, 95, 105)};
      break;
    case 5:
      colours = new color[] {color(240, 180, 120), color(255, 240, 180), color(255, 100, 80), color(180, 90, 60), color(200, 60, 40), color(160, 70, 50), color(180, 80, 60), color(200, 90, 70), color(220, 100, 80)};
      break;
    case 6:
      colours = new color[] {color(100, 130, 90), color(230, 240, 210), color(80, 160, 120), color(60, 80, 50), color(160, 70, 60), color(40, 60, 30), color(50, 70, 40), color(60, 80, 50), color(70, 90, 60)};
      break;
    case 7:
      colours = new color[] {color(200, 220, 240), color(30, 50, 80), color(170, 220, 255), color(180, 200, 220), color(100, 150, 200), color(180, 200, 220), color(190, 210, 230), color(200, 220, 240), color(210, 230, 250)};
      break;
    default:
      colours = new color[] {color(0), color(0), color(0), color(0), color(0), color(0), color(0), color(0), color(0)};
  }
  target.noStroke();
  for (PVector s : shapes) {
    target.fill(colours[(int)random(colours.length)]);
    if (random(1) > 0.3) {
      target.ellipse(s.x, s.y, s.z, s.z);
    } else {
      target.ellipse(s.x, s.y, s.z, s.z * random(0.6, 1.4));
    }
  }
}
void saveAllSections(int themeIndex) {
  File imagesDir = new File(new File(sketchPath("")).getParentFile().getParentFile(), "data/images/sections/" + themes[themeIndex]);
  if (!imagesDir.exists()) {
    imagesDir.mkdirs();
  }
  for (int row = 0; row < rows; row++) {
    for (int col = 0; col < columns; col++) {
      int sectionWidth = width / columns;
      int sectionHeight = height / rows;
      PImage section = get(col * sectionWidth, row * sectionHeight, sectionWidth, sectionHeight);
      section.save(imagesDir.getAbsolutePath() + File.separator + themes[themeIndex] + "Section[" + row + "][" + col + "].png");
      delay(100);
    }
  }
}
void themeBlurs(int themeIndex) {
  drawGradient(themeIndex);
  buffer.beginDraw();
  buffer.clear();
  drawShapes(themeIndex, buffer);
  buffer.endDraw();
  buffer.filter(BLUR, blurAmount);
  image(buffer, 0, 0);
  saveAllSections(themeIndex);
}
