class Polygon {
  int polyV;
  float polyX;
  float polyY;
  float polyR;
  float polyA;
  PVector[] points;
  Polygon(float x, float y, float r, int v) {
    this.polyV = v;
    this.polyX = x;
    this.polyY = y;
    this.polyR = r;
    this.polyA = TWO_PI / this.polyV;
    this.generatePoints();
  }
  void generatePoints() {
    this.points = new PVector[this.polyV];
    for (int i = 0; i < this.polyV; i++) {
      float a = i * this.polyA;
      points[i] = new PVector(this.polyX + cos(a) * this.polyR, this.polyY + sin(a) * this.polyR);
    }
  }
  PVector[] getVertices() {
    return this.points.clone();
  }
  void update(float x, float y, float r) {
    if (x != this.polyX || y != this.polyY || r != this.polyR) {
      this.polyX = x;
      this.polyY = y;
      this.polyR = r;
      this.generatePoints();
    }
  }
  void display() {
    beginShape();
    for (PVector p : this.points) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
  }
}
