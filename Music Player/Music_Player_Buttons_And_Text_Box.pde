import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
//
//float stopInsdieWidth, stopInsideHeight;
PImage img;
void setup() {
  loadingMp4s();
  //
  //Illsutrate Garbage Collection of Local Variable
  size(750, 750); //width, height 
  img = loadImage("./anime.jpg");
  image(img, 0, 0);  
  //displayWisth, displayHeight
  //
  //Population: visual data
 // 
///} //End setup



//void draw() {
  //List Box
  //rect(listX, listY, listWidth, listHeight);
  //
  //Stop Button
  fill(black);
  rect(stopX, stopY, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2, stopY2, ButtonWidth2, ButtonHeight2);
  fill(purple);
  ellipse(buttonSX, buttonSY, stopButtonWidth, stopButtonHeight); 
  //
  //Pause Button
  fill(black);
  rect(pauseX, pauseY, ButtonWidth, ButtonHeight);
  fill(white);
  rect( pauseX2, pauseY2, ButtonWidth2, ButtonHeight2 );
  //Stick for pause Butoon
  fill(red);
  rect(stick1X, stick1Y, stick1Width, stick1Height);
  rect(stick2X, stick2Y, stick1Width, stick1Height);
  //
  //List
  fill(black);
  rect(listX, listY, listWidth + 30, listHeight);
  fill(white);
  rect(listX2, listY2, listWidth2 + 30, listHeight2);
   fill(white);
   textSize(20);
  text("Music Player", 10, 20);
  //Play Button
  fill(black);
  rect(PlayX, PlayY, ButtonWidth, ButtonHeight);
  fill(white);
  rect(playX2, playY2, ButtonWidth2, ButtonHeight2 );
  fill(purple);
  //triangle(360, 450, 350, 250 , 250,300 );
  //
  //
  //Fast Foward Button
  fill(black);
  rect(stopX + 200, stopY, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 200, stopY2, ButtonWidth2, ButtonHeight2);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //
  //Next Button
  fill(black);
  rect(stopX + 300, stopY, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 300, stopY2, ButtonWidth2, ButtonHeight2);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //rect( X, Y, Width, Height );
  //
  //Prevecvious button
  fill(black);
  rect(stopX + 400, stopY, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 400, stopY2, ButtonWidth2, ButtonHeight2);
  //triangle(-X1, -Y1, -X2, -Y2, -X3, -Y3);
  //rect( -X, -Y, -Width, -Height );
  //
  //Loop
  //Homework
    fill(black);
  rect(stopX, stopY + 100, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2, stopY2 + 100, ButtonWidth2, ButtonHeight2);
  //ellipse( X, Y, WIdthDiamater, HightDiamater);
  //ellipse( X, Y, WIdthDiamater, HightDiamater);
  //triangle(X1, Y1, X2, Y2, X3, Y3);
  //
  //Loop the song infinte
  fill(black);
  rect(stopX + 100, stopY + 100, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 100, stopY2 +100 , ButtonWidth2, ButtonHeight2);
  //Looptheplaylist
  fill(black);
  rect(stopX + 200, stopY + 100, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 200, stopY2 + 100, ButtonWidth2, ButtonHeight2);
  //Bothhomework
  //random
    fill(black);
  rect(stopX + 300, stopY + 100, ButtonHeight, ButtonWidth);
  fill(white);
  rect(stopX2 + 300, stopY2 + 100, ButtonWidth2, ButtonHeight2);
} //End draw

void textBox() {
  PFont font;
   font = createFont ("Comicsans", 55);
  textSize(30);
  fill(black);

}
//
