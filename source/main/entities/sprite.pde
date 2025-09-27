class Sprite {
  float spriteX;
  float spriteY;
  float spriteW;
  float spriteH;
  float spriteR;
  color spriteC;
  boolean alphaDep;
  Sprite(float x, float y, float w, float h, float r, color c, boolean d) {
    this.spriteX = x;
    this.spriteY = y;
    this.spriteW = w;
    this.spriteH = h;
    this.spriteR = r;
    this.spriteC = c;
    this.alphaDep = d;
  }
  void display() {
    if (this.alphaDep) {
      fill(spriteC, alpha);
    }
    rect(this.spriteX, this.spriteY, this.spriteW, this.spriteH, this.spriteR);
  }
}
