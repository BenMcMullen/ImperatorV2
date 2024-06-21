

draw_self();
// Set alignment and font properties
draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_venite); // Replace with your desired font
draw_set_color(c_yellow)

// Text wrapping parameters
var max_width = 350; // Maximum width before wrapping
var line_height = 32; // Height of each line, adjust as needed

// Adjust the position as needed to position text below the sprite
var text_x = other.x_coordinate + 20; // Adjust if needed
var text_y = other.y_coordinate -50; // Position just below the sprite, adjust 4 as needed


// Wrap the text using the custom function WrapText
var words = WrapImperatorDialogue(string(other.dialogue), max_width);

var num_lines = array_length(words);

// Draw each line
for (var i = 0; i < num_lines; i++) {
    draw_text(text_x, text_y + i * line_height, words[i]);
}


/// obj_shopUpgradeDescription Draw Event
 // Draw the object itself


