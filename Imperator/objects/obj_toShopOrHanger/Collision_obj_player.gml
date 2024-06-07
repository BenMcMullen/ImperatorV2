
//Once a contract is completed, route to the hanger immediately upon touching exfil.
if (instance_exists(obj_player)) 
{

	if (global.contractCompleted || instance_exists(obj_introInstructions)) {
		if (global.currentMusic != -1) 
		{
			audio_stop_sound(global.currentMusic);
			global.currentMusic = -1;
			global.musicPlaying = false;
		}
		//send player back to hanger after successful mission
		toHanger = global.levels[3];
		SlideTransition(TRANS_MODE.GOTO,toHanger);
		
	}

}
