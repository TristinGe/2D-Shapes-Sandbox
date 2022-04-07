//Global Variables
int smallerGeometryDimension, reset;
//
void population() 
{
  //Variable Populration
  smallerGeometryDimension = appHeight; //user told to turn phone, always landscape or square
  reset = smallerGeometryDimension/smallerGeometryDimension; // returns "1" //default value for resetting parameters
  rectFacex =  appWidth*0.5 - smallerGeometryDimension*0.5;
  rectFacey = appHeight*0;
  rectFacewidth = smallerGeometryDimension;
  rectFaceheight = smallerGeometryDimension;
  faceX = appWidth*0.5;
  faceY = appHeight*0.5;
  faceDiameter = smallerGeometryDimension;
  leftEyeX = appWidth*0.5 - smallerGeometryDimension*1/4.9;
  leftEyeY = appHeight*0.5 - smallerGeometryDimension*0.25;
  rightEyeX = appWidth*0.5 + smallerGeometryDimension*1/4.9;
  rightEyeY = leftEyeY;
  EyeDiameter = smallerGeometryDimension*0.25;
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
}//End population
