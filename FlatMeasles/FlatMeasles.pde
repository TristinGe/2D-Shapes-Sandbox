//Global Variables
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
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
rectFacex = appWidth*0;
rectFacey = appHeight*0;
rectFacewidth = appWidth;
rectFaceheight = appHeight;
//
//Face: Circle = inscribed in a square
///Center a circle on display orienttion (landscape)
rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
//ellipse();
//
//Left Eye
//rect();
//ellipse();
//
//Right Eye
//rect();
//ellipse();
//
//Nose
//rect();
//ellipse();
//
//Mouth
//rect();
//ellipse();
//
//Measle
//rect();
//ellipse();
