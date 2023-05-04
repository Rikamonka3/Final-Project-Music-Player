import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


PFont font;
font = createFont ("Comicsans", 55);
String string1 = "Fuwa Fuwa Time.";
String string2 = "Angel Beats.";
String string3 = "Sword Of Justice.";


//Global Variables
//
//float stopInsdieWidth, stopInsideHeight;

void textCentre() {
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(font);
  textSize(15);
}

void textSetup() {}

PImage img;
void setup() {
  textSetup();
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
 //End draw

//void textBox() {
  //PFont font;
   //font = createFont ("Comicsans", 55);
  //textSize(30);
  //fill(black);

}
//Idk
void keyPressed() {
  //
  soundEffects[1].play();
   delay(2000); 
  keyPressedShortCuts();
  //
} //End keyPressed
void keyPressedShortCuts() {
  //
  musicShortCuts();
  quitButtons();
  //
}//

void musicShortCuts() {

  if ( key == '1' ) songs[0].loop(0); 
  if ( key == '2' ) songs[1].loop(0);
  if ( key == '3' ) songs[2].loop(0);
  if ( key == '4' ) songs[3].loop(0);

  //
  
  if ( key == 'P' || key=='p' ) playPause(); //teacher started
  if ( key == 'U' || key=='u' ) autoPlay(); //teacher started
  if ( key == 'M' || key=='m' ) mute(); //teacher started
  if ( key == 'S' || key=='s' ) stopSong(); //teacher started
  if ( key == 'F' || key=='f' ) fastForward(); //teacher started
  if ( key == 'R' || key=='r' ) fastRewind(); //teacher started
  if ( key == 'N' || key=='n' ) nextSong(); //psuedo code only
  if ( key == 'B' || key=='b' ) previousSong(); //psuedo code only
  if ( key == 'L' || key=='l' ) loopSong(); //loops current song infinitely
  if ( key == 'O' || key=='o' ) loopPlaylist(); //entire playlist
  if ( key == 'W' || key=='w' ) shufflePlaylist(); //shuffle
  if ( key == 'E' || key=='e' ) loopAndShuffle(); //Loop and Shuffle
}

void quitButtons() {
  //Quit Button Key Board Shortcuts
  if ( key == 'Q' || key == 'q' ) {
    quitButtonCode();
  }
  if ( key == CODED && keyCode == ESC ) {
    quitButtonCode();
  }//End Quit Buttons
}//End quitButtons
//
void quitButtonCode() {
  soundEffects[3].loop(0); //only need partial file, use .play(int millis)
  //Visual Image or Text of Goodbye
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  }
  
  delay(4000); //alternate way of playing sound once
  exit();
}//End quitButtonCode
//
/* Note: must define a difference between auto play and loop playlist
 */
void autoPlay() {
  //Note: plays one song, then the next automatically
  //Asks the computer if a song is playing, continually
  //When current song finishes, it rewinds current song and plays the next song
  //
  /*ERROR: autoplay never stops the song if it is enabled
  - once the song stops, or by pressing STOP
  - next song will start
  - might even start the next song at the same time as the current song
  */
  if ( autoPlayON==false ) {
    autoPlayON=true;
  } else {
    autoPlayON=false;
    songs[currentSong].pause(); //enables play to continue when auto play is turned off
    //songs[currentSong].rewind();
  }
}//End AutoPlay
void autoPlayMusic() {
  //ERROR: ArrayListOutOfBounds
  if ( songs[currentSong].isPlaying()==false ) {
    currentSong++;
    songs[currentSong].play();
  }
}//End Auto Play Music
//
void playPause()
{
  //Ask computer if the song is playing
  //Note: remember to use Auto Play
  //ERROR: song will not play if at the end
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) { //80% of the song
    songs[currentSong].rewind();
    songs[currentSong].play();
    //Remember, Auto Play is better b/c it plays the next song
  } else {
    //autoPlay(), is better here
    songs[currentSong].play(); //Interim solution
  }
}//End Play Pause
//
void mute()
{
  //MUTE, not PAUSE, only affects the speakers
  //Based on a question: is the song muted
  //ERROR: this MUTE Button only works when the song is playing
  //ERROR: user will spam mute if song is at end of file
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].isMuted() && songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    songs[currentSong].rewind(); //one solution
    songs[currentSong].unmute();
    //
    /* Other solutions
     - unmute the next song
     - show notification speakers are muted and song will not play
     */
  } else {
    songs[currentSong].mute(); //simple solution, contains two ERRORS, see above
  }
}//End Mute
//
void stopSong()
{
  //Based on a question: is the song playing
  //Hint: would this fix the ERROR of the MUTE Button
  //Note: STOP is actually afancy rewind, no ERRORS
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop Song
//
void fastForward() {
  //Asks comptuer if the song is playing
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(3000); //parameter in milliseconds
}//End Fast Forward
//
void fastRewind() {
  if ( songs[currentSong].isPlaying() ) songs[currentSong].skip(-3000); //parameter in milliseconds
}//End Fast Rewind
//
void nextSong() {
  if  ( songs[currentSong].isPlaying() )  {
  } else if (currentSong >= songs.length-1 ) {
    currentSong = 0;
  } else  songs[currentSong].rewind();
  }
//
void previousSong() {
  currentSong--;
}//End Previous Song
//
void loopSong() {
}//End Loop Song
//
void loopPlaylist() {
}//End Loop the Playlist
//
void shufflePlaylist() {
}//End Shuffle the Playlist()
//
void loopAndShuffle() {
  //Student to finish
  //Hint: random() and casting, see Global Variables' currentSong declaration
}//End Loop And Shuffle
