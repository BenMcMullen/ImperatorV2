if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (!launched && instance_exists(obj_player)) {

    var player = instance_find(obj_player, 0);
    x = player.x;
    y = player.y;
	direction = player.direction;
    image_angle = player.image_angle;
    image_xscale = player.image_xscale;
    image_yscale = player.image_yscale;

}
else if (launched && instance_exists(obj_player)) {

    image_speed = 1; // Set to your desired animation speed
    image_index += image_speed; // Increment image_index manually
    
    if (image_index >= sprite_get_number(sprite_index)) {
        image_index = 1; // Loop back to the first frame after 0
    }
	
x += lengthdir_x(projectileSpeed, direction);
y += lengthdir_y(projectileSpeed, direction);

}