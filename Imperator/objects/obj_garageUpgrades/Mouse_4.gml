// obj_shipSystems Mouse Events
var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        drag = true;
        initial_x = mouse_x - x;
        initial_y = mouse_y - y;
        // Store the starting position
        start_x = x;
        start_y = y;
    
}
}