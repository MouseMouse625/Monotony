class DeathPlatform extends Sprite {
  DeathPlatform(float x, float y, float w, float h) {
    this(x, y, w, h, blockRadius);
  }
  DeathPlatform(float x, float y, float w, float h, float r) {
    super(x, y, w, h, r, color(deathPlatformColour), true);
  }
  void display() {
    this.spriteC = color(deathPlatformColour);
    super.display();
  }
}
