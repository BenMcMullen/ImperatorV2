var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
    var currentTime = current_time / 1000;

    if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; // Update the last click time

        with (obj_imperatorBubble) {
            instance_destroy();
        }

        var imperatorBubble = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorBubble);
        imperatorBubble.x_coordinate = x_coordinate;
        imperatorBubble.y_coordinate = y_coordinate;
        imperatorBubble.longDialogue = false;

        lastClickTime = currentTime; // Update the last click time
    }
}
