void draw() {

    if ( activateWindow == true ) background(0);
  if (autoPlayON ==true ) autoPlayMusic();
print(autoPlayON, songs[currentSong].isPlaying(), currentSong, songs[currentSong].position(), songs[currentSong].length() );
  //List Box
}
//Fun Stuff

Boolean activateWindow =false, autoPlayON=false;
