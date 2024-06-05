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
		global.hasContract= true;
		global.contractCompleted= false;
		global.contractQuantity = 3;
		global.contractType = global.enemy_types[0]
		SlideTransition(TRANS_MODE.GOTO,other.target);
	
	}

}