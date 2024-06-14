// obj_shipGarage - Draw Event

draw_self();

// Scale factor for the sprite
var ship = global.selectedShip;

// Get the original width and height of the sprite
var spriteWidth = sprite_get_width(ship.sprites.spriteGarage);
var spriteHeight = sprite_get_height(ship.sprites.spriteGarage);
var spriteX = room_width / 2 - spriteWidth / 2;
var spriteY = room_height / 2 - spriteHeight / 2;

// Draw the ship sprite
draw_sprite(ship.sprites.spriteGarage, 0, spriteX, spriteY);

// Margin for ship details
var margin = 20;

// Calculate the vertical spacing between ship details
var detailSpacing = room_height / 4;

// Calculate the X position for ship details on the left side (left third of the screen)
var leftDetailX = margin; // Align to the left

