 /// obj_shopUpgradeDescription Draw Event
 var upgrade = GetUpgrade(array_index, systemType);


	 if (draw_delayed) {
// Set alignment and font properties
draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_veniteItemLabel); // Replace with your desired font

// Text wrapping parameters
var max_width = 80; // Maximum width before wrapping
var line_height = 20; // Height of each line, adjust as needed

// Adjust the position as needed to position text below the sprite
var text_x = x; // Adjust if needed
var text_y = y + sprite_height / 2 + 4; // Position just below the sprite, adjust 4 as needed

var isShop = true;
// Wrap the text using the custom function WrapText
var words = WrapUpgradeText(string(text), max_width, upgrade.systemStatus.cost, upgrade.systemStatus.isOwned, isShop);
if (!upgrade.systemStatus.unlocked) {
	words = ["locked!"];
}

var num_lines = array_length(words);

// Draw each line
for (var i = 0; i < num_lines; i++) {
	draw_set_color(c_black)
    draw_text(text_x, text_y + i * line_height, words[i]);
	draw_set_color(c_white)
	 draw_text(text_x +1, text_y + i * line_height -1, words[i]);
}

/// obj_shopUpgradeDescription Draw Event
draw_self(); // Draw the object itself
	 }