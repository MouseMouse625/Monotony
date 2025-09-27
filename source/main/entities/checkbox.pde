class Checkbox extends Sprite {
  int transitionFrames = 10;
  float transitionProgress;
  float checkboxW;
  float checkboxH;
  float checkboxR;
  color outlineColor;
  color uncheckedFill;
  color checkedFill;
  color currentFill;
  String state;
  boolean wasMousePressed;
  Checkbox(float x, float y, float w, float h, String initialState) {
    this(x, y, w, h, halfBlockSize, initialState);
  }
  Checkbox(float x, float y, float w, float h, float r, String initialState) {
    super(x, y, w, h, r, color(0), false);
    this.checkboxW = w;
    this.checkboxH = h;
    this.checkboxR = r;
    this.state = initialState;
    outlineColor = color(playerColour, alpha);
    uncheckedFill = color(playerColour, 0);
    checkedFill = color(playerColour, alpha);
  }
  String getState() {
    return state;
  }
  void update() {
    if (mousePressed && !wasMousePressed && hoverCheck(this)) {
      if (state.equals("default")) {
        state = "checked";
      } else {
        state = "default";
      }
      transitionProgress = 0;
      if (buttonClickCheckbox.getState() == "checked") {
        buttonClick.play();
      }
    }
    wasMousePressed = mousePressed;
    transitionProgress = min(transitionProgress + (1.0 / transitionFrames), 1);
    if (state.equals("checked")) {
      currentFill = lerpColor(uncheckedFill, checkedFill, transitionProgress);
    } else {
      currentFill = lerpColor(checkedFill, uncheckedFill, transitionProgress);
    }
  }
  void display() {
    outlineColor = color(playerColour, alpha);
    checkedFill = color(playerColour, alpha);
    update();
    stroke(outlineColor);
    fill(currentFill);
    rect(spriteX, spriteY, checkboxW, checkboxH, checkboxR);
    noStroke();
  }
}
