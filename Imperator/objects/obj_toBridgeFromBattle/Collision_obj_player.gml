
//Once a contract is completed, route to the hangar immediately upon touching exfil.
if (instance_exists(obj_player)) 
{
	with (obj_player)
	{
		if (hasControl) //This prevents us from incrementing the current level 40 times, since GM2 tracks one collision per step before the transition is done. 
		{

			if (global.contractCompleted)
			{
				if (global.currentMusic != -1) 
				{
					audio_stop_sound(global.currentMusic);
					global.currentMusic = -1;
					global.musicPlaying = false;
				}
				//send player back to hangar after successful mission
				//SaveFile(SAVEFILE)
				LoadBridge();
				
				global.playerInformation.points = global.playerInformation.points + global.levelPoints;
				show_debug_message("Triggers here")
				CompleteMission();
				hasControl = false;
			}
			else if (instance_exists(obj_introInstructions)){
				LoadBridge();
		}
	}

}
}