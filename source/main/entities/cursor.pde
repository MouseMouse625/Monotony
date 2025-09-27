class Cursor {
  int transitionFrames = 20;
  float transitionProgress;
  float prevHeadRadius;
  float prevHeadFillAlpha;
  float prevHeadStrokeAlpha;
  float prevTrailLineLength;
  float prevTrailXDeviation;
  float prevTrailFillAlpha;
  float prevTrailStrokeAlpha;
  float prevTrailLineAlpha;
  float headCursorS = 0.4;
  float headCursorCR;
  float headCursorX;
  float headCursorY;
  float headCursorCFA;
  float headCursorCSA;
  float trailCursorS = 0.1;
  float trailCursorCLL;
  float trailCursorX;
  float trailCursorY;
  float trailCursorMidX;
  float trailCursorCXD;
  float trailCursorCFA;
  float trailCursorCSA;
  float trailCursorCLA;
  float targetHeadRadius;
  float targetHeadFillAlpha;
  float targetHeadStrokeAlpha;
  float targetTrailLineLength;
  float targetTrailXDeviation;
  float targetTrailFillAlpha;
  float targetTrailStrokeAlpha;
  float targetTrailLineAlpha;
  String prevState = "default";
  String state = "default";
  boolean hovering;
  Polygon headCursor;
  Polygon trailCursor;
  PVector[] verts;
  PVector[] hourglassVerts;
  Cursor() {
    this.headCursor = new Polygon(0, 0, halfBlockSize * 0.6, 6);
    this.trailCursor = new Polygon(0, 0, halfBlockSize * 1.5, 6);
    this.hourglassVerts = new PVector[6];
  }
  void updateState() {
    this.hovering = false;
    if (level == "mainMenu") {
      for (Button btn : menuButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "levelSelect") {
      for (Button btn : levelsButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "achievements") {
      for (Button btn : achievementsButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "settingsMenu") {
      for (Button btn : settingsButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "themeSettings") {
      for (Button btn : themeButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "graphicsSettings") {
      for (Button btn : graphicsButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
      for (Checkbox checkbox : graphicsCheckboxes) {
        if (hoverCheck(checkbox)) {
          this.hovering = true;
          break;
        }
      }
    } else if (level == "audioSettings") {
      for (Button btn : audioButtons) {
        if (hoverCheck(btn)) {
          this.hovering = true;
          break;
        }
      }
      for (Checkbox checkbox : audioCheckboxes) {
        if (hoverCheck(checkbox)) {
          this.hovering = true;
          break;
        }
      }
    }
    if (this.hovering) {
      if (alpha == 255) {
        this.state = "hover";
      } else {
        this.state = "blockedHover";
      }
    } else {
      if (alpha == 255) {
        this.state = "default";
      } else {
        this.state = "blockedDefault";
      }
    }
    if (this.prevState != this.state) {
      this.prevState = this.state;
      this.transitionProgress = 0;
      this.prevHeadRadius = this.headCursorCR;
      this.prevHeadFillAlpha = this.headCursorCFA;
      this.prevHeadStrokeAlpha = this.headCursorCSA;
      this.prevTrailLineLength = this.trailCursorCLL;
      this.prevTrailXDeviation = this.trailCursorCXD;
      this.prevTrailFillAlpha = this.trailCursorCFA;
      this.prevTrailStrokeAlpha = this.trailCursorCSA;
      this.prevTrailLineAlpha = this.trailCursorCLA;
    }
    this.transitionProgress = min(this.transitionProgress + (1.0 / this.transitionFrames), 1);
  }
  void updateVisualProperties() {
    this.targetHeadRadius = halfBlockSize * 0.6;
    this.targetHeadFillAlpha = 0;
    this.targetHeadStrokeAlpha = 0;
    this.targetTrailLineLength = 0;
    this.targetTrailXDeviation = 0;
    this.targetTrailFillAlpha = 0;
    this.targetTrailStrokeAlpha = 0;
    this.targetTrailLineAlpha = 0;
    switch(this.state) {
      case "default":
        this.targetHeadFillAlpha = 255;
        this.targetTrailStrokeAlpha = 255;
        this.targetTrailFillAlpha = 0;
        break;
      case "hover":
        this.targetHeadRadius = halfBlockSize * 0.7;
        this.targetHeadStrokeAlpha = 255;
        this.targetTrailStrokeAlpha = 255;
        break;
      case "blockedDefault":
        this.targetHeadRadius = 0;
        this.targetHeadStrokeAlpha = 255;
        this.targetTrailStrokeAlpha = 255;
        this.targetTrailXDeviation = this.trailCursor.polyR;
        break;
      case "blockedHover":
        this.targetHeadRadius = 0;
        this.targetTrailLineLength = halfBlockSize * 1.5;
        this.targetTrailStrokeAlpha = 255;
        this.targetTrailLineAlpha = 255;
        break;
    }
    this.headCursorCR = map(this.transitionProgress, 0, 1, this.prevHeadRadius, this.targetHeadRadius);
    this.headCursorCFA = map(this.transitionProgress, 0, 1, this.prevHeadFillAlpha, this.targetHeadFillAlpha);
    this.headCursorCSA = map(this.transitionProgress, 0, 1, this.prevHeadStrokeAlpha, this.targetHeadStrokeAlpha);
    this.trailCursorCLL = map(this.transitionProgress, 0, 1, this.prevTrailLineLength, this.targetTrailLineLength);
    this.trailCursorCXD = map(this.transitionProgress, 0, 1, this.prevTrailXDeviation, this.targetTrailXDeviation);
    this.trailCursorCFA = map(this.transitionProgress, 0, 1, this.prevTrailFillAlpha, this.targetTrailFillAlpha);
    this.trailCursorCSA = map(this.transitionProgress, 0, 1, this.prevTrailStrokeAlpha, this.targetTrailStrokeAlpha);
    this.trailCursorCLA = map(this.transitionProgress, 0, 1, this.prevTrailLineAlpha, this.targetTrailLineAlpha);
  }
  void updateCommonProperties() {
    this.headCursorX = lerp(this.headCursorX, mouseX, this.headCursorS);
    this.headCursorY = lerp(this.headCursorY, mouseY, this.headCursorS);
    this.trailCursorX = lerp(this.trailCursorX, mouseX, this.trailCursorS);
    this.trailCursorY = lerp(this.trailCursorY, mouseY, this.trailCursorS);
    this.headCursor.update(this.headCursorX, this.headCursorY, this.headCursorCR);
    this.trailCursor.update(this.trailCursorX, this.trailCursorY, halfBlockSize * 1.5);
  }
  void displayDefault() {
    fill(255, this.headCursorCFA);
    stroke(255, this.headCursorCSA);
    this.headCursor.display();
    if (this.trailCursorCXD > 0) {
      this.displayBlockedDefault();
    } else {
      this.drawTrailCursor();
    }
  }
  void displayHover() {
    this.displayDefault();
  }
  void displayBlockedDefault() {
    this.trailCursorS = this.headCursorS;
    this.updateCommonProperties();
    this.verts = this.trailCursor.getVertices();
    this.trailCursorMidX = (this.verts[1].x + this.verts[2].x) / 2;
    this.hourglassVerts[0] = new PVector(this.trailCursorMidX, this.verts[0].y);
    this.hourglassVerts[1] = this.verts[1];
    this.hourglassVerts[2] = this.verts[2];
    this.hourglassVerts[3] = new PVector(this.trailCursorMidX, this.verts[3].y);
    this.hourglassVerts[4] = this.verts[4];
    this.hourglassVerts[5] = this.verts[5];
    if (this.transitionProgress < 1) {
      this.hourglassVerts[0].x = this.verts[0].x - this.trailCursorCXD;
      this.hourglassVerts[3].x = this.verts[3].x + this.trailCursorCXD;
    }
    fill(255, this.headCursorCFA);
    stroke(255, this.headCursorCSA);
    beginShape();
    for (PVector v : this.hourglassVerts) {
      vertex(v.x, v.y);
    }
    endShape(CLOSE);
    this.trailCursorS = 0.1;
  }
  void displayBlockedHover() {
    if (this.trailCursorCXD > 0) {
      this.displayBlockedDefault();
    } else {
      this.trailCursorS = this.headCursorS;
      this.updateCommonProperties();
      this.trailCursorS = 0.1;
      noFill();
      stroke(255, this.trailCursorCSA);
      this.trailCursor.display();
      pushMatrix();
      translate(this.trailCursorX, this.trailCursorY);
      rotate(radians(-60));
      stroke(255, this.trailCursorCLA);
      line(-this.trailCursorCLL, 0, this.trailCursorCLL, 0);
      popMatrix();
    }
  }
  void drawTrailCursor() {
    fill(255, this.trailCursorCFA);
    stroke(255, this.trailCursorCSA);
    this.trailCursor.display();
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
      case "blockedDefault":
        this.displayBlockedDefault();
        break;
      case "blockedHover":
        this.displayBlockedHover();
        break;
    }
    noStroke();
  }
}
