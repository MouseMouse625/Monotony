class Achievement extends Sprite {
  int achRow;
  int achCol;
  float achX;
  float achY;
  float achW;
  float achH;
  float achR;
  float titleSize;
  float subtitleSize;
  float strokeWeight;
  float lockWidth;
  float lockHeight;
  float shackleHeight;
  float shackleWidth;
  color bgC;
  color textC;
  color strokeC;
  PFont achF;
  PImage displayImg;
  String state;
  String achTitle;
  String achSubtitle;
  boolean achL;
  PGraphics mask;
  Achievement(int row, int col, float x, float y, String t, String st, boolean l) {
    this(row, col, x, y, blockSize * 18, blockSize * 5, halfBlockSize, t, st, l);
  }
  Achievement(int row, int col, float x, float y, float w, float h, String t, String st, boolean l) {
    this(row, col, x, y, w, h, halfBlockSize, t, st, l);
  }
  Achievement(int row, int col, float x, float y, float w, float h, float r, String t, String st, boolean l) {
    this(row, col, x, y, w, h, r, t, st, w * 0.1, h * 0.2, l);
  }
  Achievement(int row, int col, float x, float y, float w, float h, float r, String t, String st, float ts, float sts, boolean l) {
    this(row, col, x, y, w, h, r, t, st, ts, sts, benchNineLight, l);
  }
  Achievement(int row, int col, float x, float y, float w, float h, float r, String t, String st, float ts, float sts, PFont f, boolean l) {
    super(x, y, w, h, r, color(0), false);
    this.achRow = row;
    this.achCol = col;
    this.achX = x;
    this.achY = y;
    this.achW = w;
    this.achH = h;
    this.achR = r;
    this.achF = f;
    this.achTitle = t;
    this.achSubtitle = st;
    this.achL = l;
    this.titleSize = ts;
    this.subtitleSize = sts;
    this.strokeWeight = blockSize * 0.15;
    this.lockWidth = blockSize * 0.8;
    this.lockHeight = halfBlockSize * 1.2;
    this.shackleHeight = halfBlockSize * 0.8;
    this.shackleWidth = halfBlockSize * 0.8;
  }
  void updateState() {
    if (this.achL) {
      state = "locked";
    } else {
      state = "unlocked";
    }
  }
  void updateVisualProperties() {
    if (this.achL) {
      this.bgC = color(backgroundColour, 0);
      this.textC = color(playerColour, alpha);
      this.strokeC = color(playerColour, alpha);
    } else {
      this.bgC = color(playerColour, alpha);
      this.textC = color(backgroundColour, alpha);
      this.strokeC = color(backgroundColour, 0);
    }
  }
  void displayLocked() {
    mask = createGraphics((int)this.achW, (int)this.achH);
    mask.beginDraw();
    mask.background(0);
    mask.fill(255);
    mask.rect(0, 0, this.achW, this.achH, this.achR);
    mask.endDraw();
    displayImg = sections[this.achRow][this.achCol].copy();
    displayImg.resize((int)this.achW, (int)this.achH);
    displayImg.mask(mask);
    tint(255, alpha);
    image(displayImg, this.achX, this.achY);
    noClip();
    noFill();
    stroke(this.strokeC);
    strokeWeight(blockSize * 0.15);
    rect(this.achX, this.achY, this.achW, this.achH, this.achR);
    stroke(playerColour, alpha);
    rect(this.achX, this.achY - (this.lockHeight * 0.3), this.shackleWidth, this.shackleHeight * 2, this.shackleWidth / 2);
    fill(playerColour, alpha);
    noStroke();
    rect(this.achX, this.achY + this.lockHeight * 0.2, this.lockWidth, this.lockHeight, blockRadius);
  }
  void displayUnlocked() {
    fill(this.bgC);
    stroke(this.strokeC);
    strokeWeight(this.strokeWeight);
    rect(this.achX, this.achY, this.achW, this.achH, this.achR);
    fill(this.textC);
    noStroke();
    textAlign(CENTER, CENTER);
    textFont(this.achF, this.titleSize);
    text(this.achTitle, this.achX, this.achY - (this.achH * 0.15));
    textFont(this.achF, this.subtitleSize);
    text(this.achSubtitle, this.achX, this.achY + (this.achH * 0.15));
    textAlign(CENTER);
  }
  void display() {
    updateState();
    updateVisualProperties();
    if (this.state == "locked") {
      this.displayLocked();
    } else if (this.state == "unlocked") {
      this.displayUnlocked();
    }
  }
}
