//Global Variables
float radius      = 200;
int numSegments   = 950;
//
void setup() 
{
  size(600, 400);
  //noLoop();
  
  // Get circle vertices
  float k = TWO_PI / (float)numSegments; //two pie
  for ( int i = 0; i < numSegments; i=i+1 ) {//"for loop"
  float x = cos(k*i) * radius;//Find the starting coordinates
  float y = sin(k*i) * radius;
  vectors[i] = new PVector(x, y);//set x and y as a changing vector
  }
}//End circlesetup
//Global Variables
//Creating a circle by many straight lines
PVector[] vectors = new PVector[numSegments];//Make the variable as a changing vector
//
void draw() 
{

  // Draw circle
  pushMatrix();//Make sure we only move the black ring instead of the whole picture
  translate( width/2, height/2 );//Move the ring to the center of the board

  for ( int i = 0; i < numSegments; i=i+1 ) {//"for loop"

    // Draw tangent lines
    line(vectors[i].x, vectors[i].y, vectors[i].x + 2*vectors[i].y, vectors[i].y - 2*vectors[i].x);//draw the tangent lines
    line(vectors[i].x, vectors[i].y, vectors[i].x - 2*vectors[i].y, vectors[i].y + 2*vectors[i].x);
  }
  popMatrix();//Restore the cordinates
  //
}//End circle
