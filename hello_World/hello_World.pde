//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, blue=#008FFA, yellow=#FAFF00, white=#FFFFFF; //Hexidecimal
color blueNightMode=#008F00, yellowNightMode=#F6FF00;
float thin, normal, thick;
Boolean nightMode=false, randomBackground=false, grayScale=false, backgroundColour=false;
float r = 0;
float g = 0;
float b = 0;
float bR,bG,bB;
int penSize = 1;
//
/**
 * Continuous Lines. 
 * 
 * Click and drag the mouse to draw a line. 
 */
void setup() {
  bR = random(255);
  bG = random(255);
  bB = random(255);
  background(bR,bG,bB);
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
  rect(200, 685, 75, 150);
  rect(400, 685, 75, 150);
  rect(535, 235, 150, 50);
  rect(15, 235, 150, 50);
  stroke(255);
    
    
    stroke(r,g,b);
  strokeWeight(penSize);
  if (mousePressed&&mouseY<height-50) {
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  strokeWeight(3);
  line(0,height-50,width,height-50);
  stroke(0);
  strokeWeight(1);
  fill(255,0,0);
  rect(0,height-50,50,50);
  fill(0,255,0);
  rect(50,height-50,50,50);
  fill(255,255,0);
  rect(100,height-50,50,50);
  fill(255);
  rect(150,height-50,50,50);
  fill(0);
  rect(200,height-50,50,50);
  fill(255);
  rect(250,height-50,50,50);
  fill(random(0,255),random(0,255),random(0,255));
  text("?",273,height-20);
  
  if(mousePressed&&mouseX<50&&mouseY>height-50) {
    r = 255; g = 0; b = 0;
  }
  if(mousePressed&&mouseX>50&&mouseX<100&&mouseY>height-50) {
    r = 0; g = 255; b = 0;
  }
  if(mousePressed&&mouseX>100&&mouseX<150&&mouseY>height-50) {
    r = 255; g = 255; b = 0;
  }
  if(mousePressed&&mouseX>150&&mouseX<200&&mouseY>height-50) {
    r = 255; g = 255; b = 255;
  }
  if(mousePressed&&mouseX>200&&mouseX<250&&mouseY>height-50) {
    r = 0; g = 0; b = 0;
  }
  if(mousePressed&&mouseX>250&&mouseX<300&&mouseY>height-50) {
    r = random(255); g = random(255); b = random(255);
  }
  
  //pen size nuttons
  
  
  
  
  
  fill(0);
  if (mousePressed&&mouseX>350-10&&mouseX<350+10&&mouseY>height-50) {
    penSize = 50;
    fill(255);
  }
  ellipse(350,height-25,50,50);
  fill(0);
  if (mousePressed&&mouseX>400-10&&mouseX<400+10&&mouseY>height-50) {
    penSize = 25;
    fill(255);
  }
  ellipse(400,height-25,25,25);
  fill(0);
  if (mousePressed&&mouseX>430-10&&mouseX<430+10&&mouseY>height-50) {
    penSize = 10;
    fill(255);
  }
  ellipse(430,height-25,10,10);
  fill(0);
  if (mousePressed&&mouseX>450-10&&mouseX<450+10&&mouseY>height-50) {
    penSize = 1;
    fill(255);
  }
  ellipse(450,height-25,2,2);
  
  //save button
  fill(255);
  rect(500,height-50,50,50);
  fill(0);
  text("SAVE",510,height-20);
  
  //erase button
  fill(100);
  rect(550,height-50,350,50);
  fill(0);
  text("ERASE",600,height-20);
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
  if (mouseX>500&&mouseX<550&&mouseY>height-50) {
    saveFrame();
  }
  if (mouseX>550&&mouseX<900&&mouseY>height-50) {
    bR = random(255);
    bG = random(255);
    bB = random(255);
    background(bR,bG,bB);
  }
} //End mousePressed
//
// End Main Program
