/// @description Insert description here
// You can write your code in this editor
global.isPaused = !global.isPaused;

    with(obj_camera) {
    if (global.isPaused) {
	 // Pause the game by setting the game speed to 0
		instance_create_layer(x, y, "Overlay", obj_pauseOverlay);
		instance_create_layer(room_width /2, room_height /2, "Overlay", obj_pauseMenu);
        game_set_speed(0, gamespeed_fps);
    } else {
		instance_destroy(obj_pauseOverlay, 0);
		instance_destroy(obj_pauseMenu);
        // Unpause the game by restoring the game speed to normal (e.g., 60 FPS)
        game_set_speed(60, gamespeed_fps);
    }
	}