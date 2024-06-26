// Draw GUI Event


// Calculate text width and height
var textWidth = string_width(text);
var textHeight = string_height(text);

// Calculate text position
var textX = clamp(RES_W * 0.5, 0 + textWidth * 0.5, RES_W - textWidth * 0.5);
var textY = clamp(RES_H * 0.3, 0 + textHeight * 0.5, RES_H - textHeight * 0.5);

// Set text color and alignment
DrawSetText(c_black, font_arial2, fa_center, fa_top);

// Draw text with shadow
draw_text(textX + 2, textY + 2, text);
draw_set_color(c_white);
draw_text(textX, textY, text);
