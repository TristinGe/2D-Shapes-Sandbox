int numSegments   = 10000;
float radius      = 200;
float slope;

PVector[] vectors = new PVector[numSegments];

void setup() {
  size(600, 400);
  smooth();
  noLoop();
  
  // Get circle vertices
  float k = TWO_PI / (float)numSegments;
  for ( int i = 0; i < numSegments; i++ ) {
    float x = cos(k*i) * radius;
    float y = sin(k*i) * radius;
   vectors[i] = new PVector(x, y);
  }
}


void draw() {
  //background(255);
  
  // Draw circle
  pushMatrix();
  translate( width/2, height/2 );
  
  for ( int i = 0; i < numSegments; i++ ) {
    float x = vectors[i].x;
    float y = vectors[i].y;
    float x1 = (i < numSegments-1) ? vectors[i+1].x : vectors[0].x;
    float y1 = (i < numSegments-1) ? vectors[i+1].y : vectors[0].y;
    stroke(0); noFill();
    strokeWeight(2);
    line(x, y, x1, y1);
    
    strokeWeight(1);
    stroke(127);
    //line(0, 0, x, y);
    
    // Draw tangent lines
    PVector tl = new PVector( -vectors[i].y, vectors[i].x );
    tl.mult(0.5f);
    stroke(0, 0, 0);
    line(vectors[i].x, vectors[i].y, vectors[i].x - 4*tl.x, vectors[i].y - 4*tl.y);
    line(vectors[i].x, vectors[i].y, vectors[i].x + 4*tl.x, vectors[i].y + 4*tl.y);
    fill(127);
    textAlign(CENTER);
    //text("V" + i, x * 1.2, y * 1.2 + 5);
  }
  
  popMatrix();
  
}
