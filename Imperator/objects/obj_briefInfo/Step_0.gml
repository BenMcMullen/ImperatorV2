if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
	if (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_anykey)) {
        instance_destroy()
}
