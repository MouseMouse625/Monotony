int currentThemeIndex;
int rows;
int columns;
int shapesAmount;
float minS;
float blurAmount;
String[] themes;
PGraphics buffer;
PGraphics blurMask;
ArrayList<PVector> shapes;
void setup() {
  currentThemeIndex = 0;
  rows = 5;
  columns = 8;
  shapesAmount = 100;
  minS = 40;
  blurAmount = 25;
  themes = new String[] {"cyberpunk", "light", "dark", "greyscale", "default", "sunset", "forest", "ice"};
  buffer = createGraphics(width, height);
  blurMask = createGraphics(width, height);
  shapes = new ArrayList<PVector>();
  fullScreen();
  noLoop();
  for (int i = 0; i < shapesAmount; i++) {
    shapes.add(new PVector(random(width), random(height), random(minS, minS * 10)));
  }
}
void draw() {
  while (currentThemeIndex <= themes.length - 1) {
    themeBlurs(currentThemeIndex);
    currentThemeIndex++;
  }
  exit();
}
