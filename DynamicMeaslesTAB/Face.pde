//Global Variables
float rectFacex, rectFacey, rectFacewidth, rectFaceheight;
float faceX, faceY, faceDiameter;
//
void face() 
{
    //Face: Circle = Circle, inscribed in a square
  ///Center a circle on display orienttion (landscape)
  rect(rectFacex, rectFacey, rectFacewidth, rectFaceheight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End face 
