with (obj_player) {
    if (hasControl) {
        // Reverse the player's movement direction
        hsp = -hsp;
        vsp = -vsp;
        
        // Reverse the player's facing direction
        image_angle += 180;
        image_angle = image_angle mod 360; // Normalize the angle to [0, 360)

        // Move the player 10 tiles (10 * tile size) in the reversed direction
        var tile_size = 32; // Assuming each tile is 32x32 pixels
       
        var distance = 10 * tile_size;

        // Calculate new position based on the reversed direction
        target_x = x + distance * cos(degtorad(image_angle + 90));
        target_y = y - distance * sin(degtorad(image_angle + 90));

        // Set flag to start moving towards target and disable control
        moving_to_target = true;
        hasControl = false; // Disable player control during transition
    }
}
