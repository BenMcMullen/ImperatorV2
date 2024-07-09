// Follow the player object
if (instance_exists(obj_player)) {
    x = obj_player.x;
    y = obj_player.y;
}

// Decrease lifespan
lifespan -= 1;

// Destroy the object when lifespan is over
if (lifespan <= 0) {
    instance_destroy();
}
