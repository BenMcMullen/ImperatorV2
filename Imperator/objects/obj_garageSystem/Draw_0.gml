// obj_garageSystem Draw Event

draw_sprite(GetShipSprite(systemType), 0, x, y);

draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top


// Text wrapping parameters
var max_width = 80; // Maximum width before wrapping
var line_height = 20; // Height of each line, adjust as needed

// Adjust the position as needed to position text below the sprite
var text_x = x + 32; // Adjust if needed
var text_y = y + sprite_height; // Position just below the sprite, adjust as needed
var textYLimit = y - 32;

draw_set_font(font_veniteLarge); // Replace with your desired font
draw_set_color(c_black);
draw_text(text_x, textYLimit , string(GetSystemLimit(systemType)));
draw_set_color(c_white);
draw_text(text_x + 2, textYLimit -2, string(GetSystemLimit(systemType)));

draw_set_font(font_veniteItemLabel); // Replace with your desired font
draw_set_color(c_black); // Set the default color to white for safety
// First draw_text (not colored)
draw_text(text_x, text_y + line_height, systemType);
draw_set_color(c_white);
draw_text(text_x +2, text_y - 2 + line_height, systemType);

// Set color to white for the second draw_text
draw_set_color(c_black);
draw_text(text_x, text_y + line_height * 2, GetShipUpgrade(systemType));
draw_set_color(c_white);
draw_text(text_x +2, text_y + line_height * 2 -2, GetShipUpgrade(systemType));

// Reset color to default (optional but good practice)
draw_set_color(c_white);
