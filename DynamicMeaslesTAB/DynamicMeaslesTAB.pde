//Global Variables
int appWidth, appHeight;
//
int smallerGeometryDimension, reset;
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, EyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
void setup() 
{
  //Display Geoemtry
  size(600, 400); //fullScreen(); displayWidth, displayHeight
  //Landscape, not square or portrait
  display();
  population();
  face ();
}//End setup
//
void draw() 
{

  //Measle
  float measleDiameter = random(smallerGeometryDimension/100, smallerGeometryDimension/25);
  float measleRadius = measleDiameter/2;
  float measleX = random(rectFacex+measleRadius, rectFacex+rectFacewidth-measleRadius);
  float measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  Boolean nightMode=false; 
  //color red =#FF0000, measleColour=red;
  color measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(120)) : color(255, random(0, 50), random(120)); //ternaty operator for day:night
  color whiteReset=#FFFFFF;
  //rect(measleX-measleRadius, measleY-measleRadius, measleDiameter, measleDiameter);
  //random values returned given other variables
  noStroke();
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  //rect();
  ellipse(leftEyeX, leftEyeY, EyeDiameter, EyeDiameter);
  //
  //Right Eye
  //rect();
  ellipse(rightEyeX, rightEyeY, EyeDiameter, EyeDiameter);
  //
  //Nose
  //rect();
  triangle(noseX1, noseY1, noseX2, noseY2, noseX3, noseY3);
  //
  //Mouth
  //rect();
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
