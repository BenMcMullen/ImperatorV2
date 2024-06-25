//THIS SHOULD ALMOST DEFINITELY BE REFACTORED- WE SHOULD BE RUNNING A SCRIPT ON
//COLLISION. THE SCRIPT SHOULD DO THE WORK TO CHECK CONDITIONS FOR COMPLETION
//Once a contract is completed, route to the hangar immediately upon touching exfil.
if (instance_exists(obj_player)) 
{
	with (obj_player)
	{
		if (hasControl) //This prevents us from running this check 40 times, since GM2 tracks one collision per step before the transition is done. 
		{
			if (instance_exists(obj_introInstructions)){
				LoadBridge();
		}
	
			else{
			MissionEnd();
		}
	}

}
}