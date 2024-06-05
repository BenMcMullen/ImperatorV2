// Draw GUI Event

draw_set_color(c_black);
draw_rectangle(0, 0, RES_W, 128, false);
draw_rectangle(0, RES_H - 128, RES_W, RES_H, false);

// Set text color and alignment


// Calculate text width and height
var textWidth = string_width(text);
var textHeight = string_height(text);

// Calculate text position
var textX = clamp(RES_W * 0.5, 0 + textWidth * 0.5, RES_W - textWidth * 0.5);
var textY = clamp(RES_H * 0.3, 0 + textHeight * 0.5, RES_H - textHeight * 0.5);

DrawSetText(c_black, font_arial2, fa_center, fa_top);

if (currentLine == 10) {
    draw_set_color(c_red); // Set font color to red for line 10
} else {
    draw_set_color(c_white); // Reset font color to white for other lines
}

// Draw text with shadow
draw_text(textX + 2, textY + 2, text);



