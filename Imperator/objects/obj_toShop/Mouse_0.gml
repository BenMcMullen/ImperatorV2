
if (instance_exists(obj_hangarManager)) {
   
		// Change state to clicked
		buttonState = "clicked";
		sprite_index = spr_btnShopClick;

		// Reset the animation frame to start the clicked animation
		image_index = 0;
		image_speed = animationSpeed;
		//if player is in their hangar, they can go back to the shop.
		SaveFile(SAVEFILE)
		LoadShop();
   
}

