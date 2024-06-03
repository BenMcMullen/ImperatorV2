
with (obj_player) 
{
	if (hasControl) 
	 // Reverse the player's movement direction
        hsp = -hsp;
        vsp = -vsp;
        
        // Reverse the player's facing direction
        image_angle += 180;
        image_angle = image_angle mod 360; // Normalize the angle to [0, 360)

}