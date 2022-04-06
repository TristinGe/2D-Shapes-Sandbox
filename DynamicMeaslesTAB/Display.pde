void display() 
{
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
}//End display
