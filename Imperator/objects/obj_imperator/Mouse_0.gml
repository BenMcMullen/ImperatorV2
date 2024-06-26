var overlay_instance = instance_find(obj_overlayConfirmation, 0);
if (!instance_exists(overlay_instance)) {
    var currentTime = current_time / 1000;

    if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; // Update the last click time

        show_debug_message("Clicked on");
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
