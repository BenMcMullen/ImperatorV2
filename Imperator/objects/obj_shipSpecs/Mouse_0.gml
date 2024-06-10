
var currentTime = current_time / 1000
//this is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
	
		
    // Check if the back button is clicked
    if (mouse_x > backButtonX && mouse_x < backButtonX + backButtonWidth &&
        mouse_y > backButtonY && mouse_y < backButtonY + backButtonHeight) {
        room_goto(obj_hangarManager); // Go back to the hangar
    }
}