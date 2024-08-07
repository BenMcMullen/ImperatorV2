// obj_shipSystemsLarge Draw Event
draw_sprite(systemSprite, 0, x, y); // Draw the sprite of obj_shipSystemsLarge



draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_venite); // Replace with your desired font

// Text wrapping parameters
var max_width = 80; // Maximum width before wrapping
var line_height = 20; // Height of each line, adjust as needed

// Adjust the position as needed to position text below the sprite
var text_x = x +32; // Adjust if needed
var text_y = y + sprite_height; // Position just below the sprite, adjust 4 as needed

draw_set_color(c_black);
draw_text(text_x, text_y , systemType);
draw_set_color(c_white);
draw_text(text_x + 2, text_y -2, systemType);