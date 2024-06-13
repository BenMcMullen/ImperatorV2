// obj_shipSystems Mouse Events
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + sprite_width, y + sprite_height)) {
        drag = true;
        initial_x = mouse_x - x;
        initial_y = mouse_y - y;
        // Store the starting position
        start_x = x;
        start_y = y;
    }
}