class LevelClearArea extends Sprite {
  LevelClearArea(float x, float y, float w, float h) {
    this(x, y, w, h, blockRadius);
  }
  LevelClearArea(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r, color(levelClearAreaColour), true);
  }
  void display() {
    this.spriteC = color(levelClearAreaColour);
    super.display();
  }
}
