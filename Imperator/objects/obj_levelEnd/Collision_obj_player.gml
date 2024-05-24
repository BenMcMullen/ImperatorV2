
with (obj_player) 
{
	if (hasControl) 
	{
		hasControl = false;
		script_slideTransition(TRANS_MODE.GOTO,other.target);
	
	}

}