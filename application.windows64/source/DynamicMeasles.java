import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DynamicMeasles extends PApplet {

//Global Variables
//
int appWidth, appHeight;
//
int smallerGeometryDimension, reset;
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, EyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthOpen;
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
//
public void setup() 
{
  //Display Geoemtry
   //fullScreen(); displayWidth, displayHeight
  //Landscape, square or portrait
  appWidth = width; //Swap with displayWidth, displayHeight for testing
  appHeight = height;
  println(width, height, displayWidth, displayHeight); //Verfication of value
  println(appWidth, appHeight); //Verfication of value
  //
  //Display Orientation
  //Purpose: a few comparisions of IFs to ID orientation (similar to image() aspect ratio)
  //Computer tells us the orientation, important for cell phone orientation
  //-tell user specific orientation
  //if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation", instruct="Bru, turn your phone";
  String orientation = (appWidth >= appHeight) ? ls : p;
  println(DO, orientation); //Verification of value
  if (orientation==p) println(instruct);
  //With Strings, easier to print to console or canvas
  //
  //Variable Populration
  smallerGeometryDimension = appHeight; //user told to turn phone, always landscape or square
  reset = smallerGeometryDimension/smallerGeometryDimension; // returns "1" //default value for resetting parameters
  rectFacex =  appWidth*0.5f - smallerGeometryDimension*0.5f;
  rectFacey = appHeight*0;
  rectFacewidth = smallerGeometryDimension;
  rectFaceheight = smallerGeometryDimension;
  faceX = appWidth*0.5f;
  faceY = appHeight*0.5f;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*0.5f - smallerGeometryDimension*1/4.9f;
  leftEyeY = appHeight*0.5f - smallerGeometryDimension*0.25f;
  rightEyeX = appWidth*0.5f + smallerGeometryDimension*1/4.9f;
  rightEyeY = leftEyeY;
  EyeDiameter = smallerGeometryDimension*0.25f;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*6/8;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerGeometryDimension*1/4;
  noseX1 = appWidth/2;
  noseY1 = leftEyeY;
  noseX2 = noseX1 - leftEyeY/2;
  noseY2 = faceY;
  noseX3 = noseX1 + rightEyeY/2;
  noseY3 = noseY2;
  //
  //Face: Circle = Circle, inscribed in a square
  ///Center a circle on display orienttion (landscape)
  rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
//
public void draw() 
{
  measles();
  circleDraw();
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
  //int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  //int mouthHeight = int ( mouthOpen );
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen);
  line( mouthX1, mouthY1, mouthX2, mouthY2 ); //Notice the END CAPS
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //

}//End draw
//
public void keyPressed() {
}//End keyPressed
//
public void mousePressed() {
}//End mousePressed
//
//End Main Program
//Global Variables
float radius      = 200;
int numSegments   = 950;//Cut the circumference into many many straight lines
//
public void circleDraw() 
{
  // Find coordinates
  pushMatrix();//Make sure we only move the black ring instead of the whole picture
  translate( width/2, height/2 );//Move the ring to the center of the board
  float k = 6.28318530718f / numSegments;
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
public void measles() 
{
  //Measle
  float measleDiameter = random(smallerGeometryDimension/100, smallerGeometryDimension/25);
  float measleRadius = measleDiameter/2;
  float measleX = random(rectFacex+measleRadius, rectFacex+rectFacewidth-measleRadius);
  float measleY = random(appHeight*0+measleRadius, appHeight-measleRadius);
  Boolean nightMode=false; 
  //color red =#FF0000, measleColour=red;
  int measleColour = ( nightMode==false ) ? color(255, random(0, 50), random(120)) : color(255, random(0, 50), random(120)); //ternaty operator for day:night
  int whiteReset=0xffFFFFFF;
  //rect(measleX-measleRadius, measleY-measleRadius, measleDiameter, measleDiameter);
  //random values returned given other variables
  noStroke();
  fill(measleColour);
  ellipse(measleX, measleY, measleDiameter, measleDiameter);
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
}
//End measles
  public void settings() {  size(600, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "DynamicMeasles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
