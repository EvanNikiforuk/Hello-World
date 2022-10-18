//Global Variables
int appWidth;
//
//Declaring Display Geometry: landscape, square, portrait
size(700, 400); //Able to deploy with fullScreen();
//Concatenation , or + (i.e space)
println("\t\t\tWidth="+width, "\tHeight ="+height);
println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
//
//Fitting CANVAS into Monitor Display
if ( width > displayWidth ) appWidth=0; //CANVAS-width will not fit
//
//Outputting instructions to user when errors with above
//Bru, turn your phum
//
