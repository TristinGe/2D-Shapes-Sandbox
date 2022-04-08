//Global Variables


//
void setup() 
{
  size(600, 400);
}//End circlesetup
//
void draw() 
{
  float radius      = 200;
  int numSegments   = 990;
  // Draw circle
  pushMatrix();//Make sure we only move the black ring instead of the whole picture
  translate( width/2, height/2 );//Move the ring to the center of the board
  float k = 6.283185 / numSegments; //
  for ( int i = 0; i < numSegments; i=i+1 ) {//"for loop"
  float x = cos(k*i) * radius;//Find the starting coordinates
  float y = sin(k*i) * radius;

    // Draw tangent lines
    line(x, y, x + 2*y, y - 2*x);//draw the tangent lines
    line(x, y, x - 2*y, y + 2*x);
  }
  
  popMatrix();//Restore the cordinates
  //
}//End circle
