//Global Variables
float EyeDiameter;
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
  measleDraw();
  leftEye();
  rightEyeDraw();
  noseDraw();
  mouthDraw();
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
