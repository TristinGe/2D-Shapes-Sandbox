float radius      = 200;
void setup() 
{
size(600,400);
  smooth();
  //noLoop();
  
  // Get circle vertices
  float k = TWO_PI / (float)numSegments; //two pie
  for ( int i = 0; i < numSegments; i=i+1 ) {
    float x = cos(k*i) * radius;//Find the starting coordinates
    float y = sin(k*i) * radius;
     vectors[i] = new PVector(x, y);
     println(x);
     println(y);
         println(vectors[i]);
  }
}//End circlesetup
//Global Variables
int numSegments   = 5;
PVector[] vectors = new PVector[numSegments];
//
void draw() 
{
  //background(255);

  // Draw circle
  pushMatrix();
  translate( width/2, height/2 );

  for ( int i = 0; i < numSegments; i=i+1 ) {

    // Draw tangent lines
    PVector tl = new PVector(-vectors[i].y, vectors[i].x );//
    tl.mult(5);
    stroke(0, 0, 0);
    line(vectors[i].x, vectors[i].y, vectors[i].x - tl.x, vectors[i].y - tl.y);
    line(vectors[i].x, vectors[i].y, vectors[i].x + tl.x, vectors[i].y + tl.y);
    fill(255);
  
  }

  popMatrix();
  //
}//End circle
