if (global.current_music != -1) {
    audio_stop_sound(global.current_music);
    global.current_music = -1;
    global.music_playing = false;
}
with (obj_player) 
{
	if (hasControl) 
	{
		hasControl = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	
	}

}