class Player extends Sprite {
  int maxTrailLength = 20;
  int jumpEffectFrames = 40;
  float hexProgress = -1;
  float currentAlpha;
  float size;
  float trailAlpha;
  PVector trailPos;
  PVector recentTrail = new PVector();
  PVector jumpOrigin = new PVector();
  Polygon hexagon;
  ArrayList<PVector> drawnPositions = new ArrayList<PVector>();
  ArrayList<PVector> trailArray = new ArrayList<PVector>();
  Player() {
    super(playerX, playerY, blockSize, blockSize, blockRadius, color(playerColour), true);
    hexagon = new Polygon(0, 0, 0, 6);
  }
  void triggerJumpEffect() {
    hexProgress = 0;
    jumpOrigin.set(playerX, playerY + 10);
    hexagon.update(jumpOrigin.x, jumpOrigin.y, 0);
  }
  void updateJumpEffect() {
    if (hexProgress >= 0) {
      hexProgress += 1.0 / jumpEffectFrames;
      currentAlpha = map(hexProgress, 0, 1, 150, 0);
      size = map(hexProgress, 0, 1, 0, blockSize * 10);
      hexagon.update(jumpOrigin.x, jumpOrigin.y, size);
      fill(playerColour, currentAlpha);
      noStroke();
      hexagon.display();
      if (hexProgress >= 1) {
        hexProgress = -1;
      }
    }
  }
  void trail() {
    recentTrail.set(playerX, playerY);
    trailArray.add(recentTrail.copy());
    if (trailArray.size() > maxTrailLength) {
      trailArray.remove(0);
    }
    drawnPositions.clear();
    for (int i = trailArray.size() - 1; i >= 0; i--) {
      trailPos = trailArray.get(i);
      boolean alreadyDrawn = false;
      for (PVector drawnPos : drawnPositions) {
        if (trailPos.x == drawnPos.x && trailPos.y == drawnPos.y) {
          alreadyDrawn = true;
          break;
        }
      }
      if (!alreadyDrawn) {
        trailAlpha = map(i, 0, trailArray.size(), 50, 255);
        fill(playerColour, trailAlpha * alpha / 255);
        rect(trailPos.x, trailPos.y, blockSize, blockSize, blockRadius);
        drawnPositions.add(new PVector(trailPos.x, trailPos.y));
      }
    }
  }
  void display() {
    if (trailCheckbox.getState() == "checked") {
      trail();
    }
    updateJumpEffect();
    this.spriteX = playerX;
    this.spriteY = playerY;
    this.spriteC = color(playerColour);
    super.display();
  }
}
