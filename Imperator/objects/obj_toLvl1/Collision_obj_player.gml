if (global.currentMusic != -1) {
    audio_stop_sound(global.currentMusic);
    global.currentMusic = -1;
    global.musicPlaying = false;
}
with (obj_player) 
{
	if (hasControl) 
	{
		hasControl = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	
	}

}