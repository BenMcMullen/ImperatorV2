draw_sprite(sprite, image_index, x, y);

// Calculate sprite dimensions
var boxWidth = sprite_get_width(sprite);
var boxHeight = sprite_get_height(sprite);

// Calculate sprite position
var boxX = x - boxWidth / 2; // Adjust x position to center the sprite
var boxY = y - boxHeight / 2; // Adjust y position to center the sprite

// Calculate text position for the main text (mission name)
var textX = boxX + boxWidth / 2;
var textY = boxY - 16; // Place text 16 pixels above the middle of the sprite

// Calculate text position for the "here" text

var hereTextY = boxY + boxHeight + 16// Place "here" text 16 pixels below the middle of the sprite

// Draw main text (mission name)
draw_set_color(c_white); // Set text color to white
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(textX, textY, selectedHoloPlanet.missionName);

// Draw "here" text
draw_set_color(c_white); // Set text color to white
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

if (currentPlanet.missionName == selectedHoloPlanet.missionName) {
draw_text(textX, hereTextY, "Current Planet")
}

// Reset text alignment (optional)
draw_set_halign(fa_left);
draw_set_valign(fa_top);
