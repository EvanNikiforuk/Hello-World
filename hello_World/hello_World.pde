//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, blue=#008FFA, yellow=#FAFF00, white=#FFFFFF; //Hexidecimal
color blueNightMode=#008F00, yellowNightMode=#F6FF00;
float thin, normal, thick;
Boolean nightMode=false, randomBackground=false, grayScale=false, backgroundColour=false;
//
/**
 * Continuous Lines. 
 * 
 * Click and drag the mouse to draw a line. 
 */
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(700, 900); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  //Population
  centerX = appWidth * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = appWidth * 1/2;
  heightRect = height * 1/2;
  thin = appWidth / appWidth; //1
  normal = appWidth * 1/70;
  thick = appWidth * 1/35;
} //End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  if ( grayScale == true ) background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  if ( backgroundColour == true ) background( color( random(0 , 255), random(0 , 255), random(0 , 255) ) ); // Colour without blue
  //
  strokeWeight( thick );
  if ( nightMode == true )
  {
    background( blackNightMode );
    stroke( blueNightMode ); 
    fill( yellowNightMode ); 
  } else
  {
    stroke( blue ); 
    fill( yellow ); 
  }
  rect(xStart, yStart, widthRect, heightRect);
  fill( white ); //default reset
  stroke( blackNightMode ); //default reset
  strokeWeight(1); //default reset
  fill(100, 64, 0);
  ellipse(350, 140, 150, 150);
  rect(315, 150, 75, 10);
  ellipse(330, 100, 5, 5);
  ellipse(375, 100, 5, 5);
  rect(200, 685, 100, 200);
  rect(400, 685, 100, 200);
  rect(535, 235, 150, 50);
  rect(15, 235, 150, 50);
  stroke(255);
  if ( mousePressed == true ) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
} //End draw
//
void keyPressed() {
  grayScale = false;
  backgroundColour = false;
  if ( key == 'G' || key == 'g' ) grayScale = true;
  if ( key == 'B' || key == 'b' ) backgroundColour = true;
} //End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed
//
// End Main Program
