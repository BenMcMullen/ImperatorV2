

if (instance_exists(obj_shop)) {
  
		// Change state to clicked
		buttonState = "clicked";
		sprite_index = spr_btnHangarClick;

		// Reset the animation frame to start the clicked animation
		image_index = 0;
		image_speed = animationSpeed;
		//if player is in their hangar, they can go back to the shop.
		Loadhangar();
       
    
}
