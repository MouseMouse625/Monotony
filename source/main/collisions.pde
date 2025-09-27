boolean collisionCheck(Sprite sprite) {
  float leftSide = sprite.spriteX - sprite.spriteW / 2;
  float rightSide = sprite.spriteX + sprite.spriteW / 2;
  float topSide = sprite.spriteY - sprite.spriteH / 2;
  float bottomSide = sprite.spriteY + sprite.spriteH / 2;
  if ((playerX >= leftSide && playerX <= rightSide && playerY >= topSide && playerY <= bottomSide) || (playerX - halfBlockSize >= leftSide && playerX - halfBlockSize <= rightSide && playerY >= topSide && playerY <= bottomSide) || (playerX + halfBlockSize >= leftSide && playerX + halfBlockSize <= rightSide && playerY >= topSide && playerY <= bottomSide) || (playerX >= leftSide && playerX <= rightSide && playerY - halfBlockSize >= topSide && playerY - halfBlockSize <= bottomSide) || (playerX >= leftSide && playerX <= rightSide && playerY + halfBlockSize>= topSide && playerY + halfBlockSize <= bottomSide) || (playerX - halfBlockSize >= leftSide && playerX - halfBlockSize <= rightSide && playerY - halfBlockSize >= topSide && playerY - halfBlockSize <= bottomSide) || (playerX - halfBlockSize >= leftSide && playerX - halfBlockSize <= rightSide && playerY + halfBlockSize >= topSide && playerY + halfBlockSize <= bottomSide) || (playerX + halfBlockSize >= leftSide && playerX + halfBlockSize <= rightSide && playerY - halfBlockSize >= topSide && playerY - halfBlockSize <= bottomSide) || (playerX + halfBlockSize >= leftSide && playerX + halfBlockSize <= rightSide && playerY + halfBlockSize >= topSide && playerY + halfBlockSize <= bottomSide)) {
    return true;
  } else {
    return false;
  }
}
boolean hoverCheck(Button button) {
  float left = button.btnX - button.currentW / 2;
  float right = button.btnX + button.currentW / 2;
  float top = button.btnY - button.currentH / 2;
  float bottom = button.btnY + button.currentH / 2;
  if (mouseX >= left && mouseX <= right && mouseY >= top && mouseY <= bottom) {
    return true;
  } else {
    return false;
  }
}
boolean hoverCheck(Checkbox checkbox) {
  float left = checkbox.spriteX - checkbox.checkboxW / 2;
  float right = checkbox.spriteX + checkbox.checkboxW / 2;
  float top = checkbox.spriteY - checkbox.checkboxH / 2;
  float bottom = checkbox.spriteY + checkbox.checkboxH / 2;
  if (mouseX >= left && mouseX <= right && mouseY >= top && mouseY <= bottom) {
    return true;
  } else {
    return false;
  }
}
