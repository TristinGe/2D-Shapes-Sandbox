PVector v1, v2;

void setup() {
  size(400,400);
  noLoop();
  v1 = new PVector(40, 20);
  v2 = new PVector(25, 50); 
}

void draw() {
  ellipse(v1.x, v1.y, 12, 12);
  ellipse(v2.x, v2.y, 19, 19);
  v2.add(v1);
  ellipse(v2.x, v2.y, 24, 24);
}
