draw_set_alpha(0); // Make the overlay completely transparent
draw_rectangle(0, 0, display_get_width(), display_get_height(), false); // Draw a rectangle covering the entire screen
draw_set_alpha(1); // Reset alpha to default
