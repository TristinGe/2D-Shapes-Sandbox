void measles() 
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
}
//End measles
