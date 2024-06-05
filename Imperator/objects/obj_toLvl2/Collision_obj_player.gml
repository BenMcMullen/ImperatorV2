


with (obj_player) 
{
	if (global.contractCompleted && hasControl) {
		if (global.currentMusic != -1) 
		{
			audio_stop_sound(global.currentMusic);
			global.currentMusic = -1;
			global.musicPlaying = false;
		}
	
		hasControl = false;
		global.hasContract= true;
		global.contractCompleted= false;
		global.contractQuantity = 6;
		global.contractType = global.enemy_types[0]
		SlideTransition(TRANS_MODE.GOTO,other.target);

	}

}