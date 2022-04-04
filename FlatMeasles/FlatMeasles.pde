//Global Variables
int smallerGeometryDimension;
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, EyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
//Display Geoemtry
size(600,400); //fullScreen(); displayWidth, displayHeight
//Landscape, square or portrait
int appWidth = width, appHeight = height;
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
mouthY1 = appHeight*3/4;
mouthX2 = rightEyeX;
mouthY2 = mouthY1;
//
//Face: Circle = Circle, inscribed in a square
///Center a circle on display orienttion (landscape)
rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY,EyeDiameter,EyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, EyeDiameter, EyeDiameter);
//
//Nose
//rect();
//ellipse();
//
//Mouth
//rect();
line(mouthX1, mouthY1, mouthX2, mouthY2);
//
//Measle
//rect();
//ellipse();
