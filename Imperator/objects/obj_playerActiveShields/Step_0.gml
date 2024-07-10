// Follow the player object
if (instance_exists(obj_player)) {
    var player = instance_find(obj_player, 0);
    x = player.x;
    y = player.y;
    image_angle = player.image_angle;
    image_xscale = player.image_xscale;
    image_yscale = player.image_yscale;
}

// Decrease lifespan
delay -= 1;
duration -= 1;

// Destroy the object when lifespan is over
if (duration <= 0) {
    instance_destroy();
	global.shieldActive = false;
}
