//Global Variables
float radius      = 200;
int numSegments   = 950;//Cut the circumference into many many straight lines
//
void circleDraw() 
{
  // Find coordinates
  pushMatrix();//Make sure we only move the black ring instead of the whole picture
  translate( width/2, height/2 );//Move the ring to the center of the board
  float k = 6.28318530718 / numSegments;
  for ( int i = 0; i < numSegments; i=i+1 ) 
  {
  //"for loop"
  float x = cos(k*i) * radius;//Find the tangent line coordinates
  float y = sin(k*i) * radius;

  // Draw tangent lines
  line(x, y, x + 2*y, y - 2*x);//draw the tangent lines
  line(x, y, x - 2*y, y + 2*x);
  }
  popMatrix();//Restore the cordinates of pushMatrix()
//
}//End circle
