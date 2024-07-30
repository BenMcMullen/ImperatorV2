if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (instance_exists(obj_player)) 
{
	with (obj_player)
	{ //This prevents us from incrementing the current level 40 times, since GM2 tracks one collision per step before the transition is done. 
		{
			  show_debug_message(LevelRequirementsMet())
		 if (missionEnd && LevelRequirementsMet()) {
				 missionEnd = false;
				 MissionEnd();	
			}
		}
	}
}
