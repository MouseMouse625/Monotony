class Button extends Sprite {
  int btnRow;
  int btnCol;
  int transitionFrames = 10;
  float transitionProgress;
  float btnX;
  float btnY;
  float prevW;
  float normalW;
  float currentW;
  float targetW;
  float prevH;
  float normalH;
  float currentH;
  float targetH;
  float btnR;
  float prevTS;
  float normalTS;
  float currentTS;
  float targetTS;
  float expandA;
  float prevSW;
  float currentSW;
  float targetSW;
  float lockWidth;
  float lockHeight;
  float shackleHeight;
  float shackleWidth;
  color prevBC;
  color bgC;
  color hoverBC;
  color currentBC;
  color targetBC;
  color prevTC;
  color textC;
  color hoverTC;
  color currentTC;
  color targetTC;
  color prevSC;
  color strokeC;
  color hoverSC;
  color currentSC;
  color targetSC;
  PFont btnF;
  PImage displayImg;
  String btnT;
  String prevState = "";
  String state = "";
  boolean btnL;
  PGraphics mask;
  Button(float x, float y, float w, float h, String t, float s, boolean l) {
    this(-1, -1, x, y, w, h, blockSize * 0.45, t, s, l);
  }
  Button(int row, int col, float x, float y, float w, float h, String t, float s, boolean l) {
    this(row, col, x, y, w, h, blockSize * 0.45, t, s, l);
  }
  Button(int row, int col, float x, float y, float w, float h, float r, String t, float s, boolean l) {
    this(row, col, x, y, w, h, r, t, benchNineLight, s, l);
  }
  Button(int row, int col, float x, float y, float w, float h, float r, String t, PFont f, float s, boolean l) {
    super(x, y, w - (blockSize * 0.625), h - (blockSize * 0.625), r, color(0), false);
    this.btnRow = row;
    this.btnCol = col;
    this.normalW = w;
    this.currentW = this.normalW - this.expandA;
    this.normalH = h;
    this.currentH = this.normalH - this.expandA;
    this.btnR = r;
    this.btnF = f;
    this.btnT = t;
    this.btnL = l;
    this.normalTS = s;
    this.expandA = blockSize * 0.625;
    this.currentSW = blockSize * 0.15;
    this.currentW = this.normalW - this.expandA;
    this.currentH = this.normalH - this.expandA;
    this.currentTS = this.normalTS - this.expandA;
    this.bgC = color(backgroundColour, 0);
    this.hoverBC = color(playerColour, alpha);
    this.textC = color(playerColour, alpha);
    this.hoverTC = color(backgroundColour, alpha);
    this.strokeC = color(playerColour, alpha);
    this.hoverSC = color(backgroundColour, 0);
    this.currentBC = color(backgroundColour, 0);
    this.currentTC = color(playerColour, alpha);
    this.currentSC = color(playerColour, alpha);
    this.lockWidth = blockSize * 0.8;
    this.lockHeight = halfBlockSize * 1.2;
    this.shackleHeight = halfBlockSize * 0.8;
    this.shackleWidth = halfBlockSize * 0.8;
  }
  void updateState() {
    this.prevState = this.state;
    this.state = "default";
    if (hoverCheck(this)) {
      this.state = "hover";
    }
    if (this.btnL) {
      this.state = "locked";
    }
    if (this.prevState != this.state) {
      this.transitionProgress = 0;
      this.prevW = this.currentW;
      this.prevH = this.currentH;
      this.prevTS = this.currentTS;
      this.prevSW = this.currentSW;
      this.prevBC = this.currentBC;
      this.prevTC = this.currentTC;
      this.prevSC = this.currentSC;
    }
    this.transitionProgress = min(this.transitionProgress + (1.0 / this.transitionFrames), 1);
  }
  void updateVisualProperties() {
    targetW = this.normalW - this.expandA;
    targetH = this.normalH - this.expandA;
    targetTS = this.normalTS - (this.expandA / 2);
    targetSW = blockSize * 0.15;
    targetBC = this.bgC;
    targetTC = this.textC;
    targetSC = this.strokeC;
    switch(this.state) {
      case "default":
        break;
      case "hover":
        targetW = this.normalW + this.expandA;
        targetH = this.normalH + this.expandA;
        targetTS = this.normalTS + (this.expandA / 2);
        targetBC = this.hoverBC;
        targetTC = this.hoverTC;
        targetSC = this.hoverSC;
        targetSW = 0;
        break;
      case "locked":
        break;
    }
    this.currentW = map(this.transitionProgress, 0, 1, this.prevW, targetW);
    this.currentH = map(this.transitionProgress, 0, 1, this.prevH, targetH);
    this.currentTS = map(this.transitionProgress, 0, 1, this.prevTS, targetTS);
    this.currentSW = map(this.transitionProgress, 0, 1, this.prevSW, targetSW);
    this.currentBC = lerpColor(this.prevBC, targetBC, this.transitionProgress);
    this.currentTC = lerpColor(this.prevTC, targetTC, this.transitionProgress);
    this.currentSC = lerpColor(this.prevSC, targetSC, this.transitionProgress);
  }
  void updateCommonProperties() {
    this.btnX = this.spriteX;
    this.btnY = this.spriteY;
    this.hoverBC = color(playerColour, alpha);
    this.textC = color(playerColour, alpha);
    this.hoverTC = color(backgroundColour, alpha);
    this.strokeC = color(playerColour, alpha);
    this.hoverSC = color(backgroundColour, 0);
  }
  void displayDefault() {
    fill(this.currentBC);
    stroke(this.currentSC);
    strokeWeight(this.currentSW);
    rect(this.spriteX, this.spriteY, this.currentW, this.currentH, this.btnR);
    fill(this.currentTC);
    strokeWeight(blockSize * 0.15);
    noStroke();
    textAlign(CENTER, CENTER);
    textFont(this.btnF, this.currentTS);
    text(this.btnT, this.spriteX, this.spriteY);
    textAlign(CENTER);
  }
  void displayHover() {
    this.displayDefault();
  }
  void displayLocked() {
    if (btnRow >= 0 && btnCol >= 0) {
      mask = createGraphics((int)this.currentW, (int)this.currentH);
      mask.beginDraw();
      mask.background(0);
      mask.fill(255);
      mask.rect(0, 0, this.currentW, this.currentH, this.btnR);
      mask.endDraw();
      displayImg = sections[this.btnRow][this.btnCol].copy();
      displayImg.resize((int)this.currentW, (int)this.currentH);
      displayImg.mask(mask);
      tint(255, alpha);
      image(displayImg, this.btnX, this.btnY);
      noClip();
    }
    noFill();
    stroke(this.strokeC);
    strokeWeight(blockSize * 0.15);
    rect(this.btnX, this.btnY, this.currentW, this.currentH, this.btnR);
    stroke(playerColour, alpha);
    rect(this.btnX, this.btnY - (this.lockHeight * 0.3), this.shackleWidth, this.shackleHeight * 2, this.shackleWidth / 2);
    fill(playerColour, alpha);
    noStroke();
    rect(this.btnX, this.btnY + this.lockHeight * 0.2, this.lockWidth, this.lockHeight, blockRadius);
  }
  void display() {
    this.updateState();
    this.updateVisualProperties();
    this.updateCommonProperties();
    switch(this.state) {
      case "default":
        this.displayDefault();
        break;
      case "hover":
        this.displayHover();
        break;
      case "locked":
        this.displayLocked();
        break;
    }
  }
}
