

if (instance_exists(obj_hangarManager)) {
	with (obj_hangarManager) 
	{
		if (hasControl)
		{
		
		// Change state to clicked
		buttonState = "clicked";
		sprite_index = spr_btnBattleClick;

		// Reset the animation frame to start the clicked animation
		image_index = 0;
		image_speed = other.animationSpeed;
		//if player is in their hangar, they can go back to the shop.
		hasControl = false;
        LoadNextLevel();        
		}	
	} 
}




