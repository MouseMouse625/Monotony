class Platform extends Sprite {
  Platform(float x, float y, float w, float h) {
    this(x, y, w, h, blockRadius);
  }
  Platform(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r, color(platformColour), true);
  }
  void display() {
    this.spriteC = color(platformColour);
    super.display();
  }
}
