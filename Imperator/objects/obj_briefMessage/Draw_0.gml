/// obj_briefDescription Draw Event

var messageText = other.messageText;
var boxWidth = sprite_get_width(spr_shopMessage);
var boxHeight = sprite_get_height(spr_shopMessage);
var boxX = (room_width - boxWidth) / 2;
var boxY = (room_height - boxHeight) / 2;

// Set alignment and font properties
draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_venite); // Replace with your desired font

// Text wrapping parameters
var line_height = 70; // Height of each line, adjust as needed

draw_sprite(spr_shopMessage, 0, boxX, boxY);
var text_y = boxY + 180; // Padding from top, adjust as needed

if (other.goHanger) {
	var text_y = boxY + 160; // Padding from top, adjust as needed
}
// Adjust the position as needed to position text within the sprite
var text_x = boxX + boxWidth / 2; // Center of the sprite


// Wrap the text using the custom function WrapTextOnPeriods
var sentences = WrapTextOnPeriods(messageText);
var num_lines = array_length(sentences);

// Draw each line
for (var i = 0; i < num_lines; i++) {
    draw_text(text_x, text_y + i * line_height, sentences[i]);
}

// Reset alignment to default
draw_set_halign(fa_left);
draw_set_valign(fa_top);
