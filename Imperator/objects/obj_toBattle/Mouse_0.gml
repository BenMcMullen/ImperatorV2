

if (instance_exists(obj_hangerManager)) {
 
		// Change state to clicked
		buttonState = "clicked";
		sprite_index = spr_btnBattleClick;

		// Reset the animation frame to start the clicked animation
		image_index = 0;
		image_speed = animation_speed;
		//if player is in their hanger, they can go back to the shop.
		
        LoadNextLevel();        
  
}




