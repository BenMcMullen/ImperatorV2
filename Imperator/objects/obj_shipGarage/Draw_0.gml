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

// Draw ship details on the left side
draw_text_ext(leftDetailX + margin, detailSpacing, "HP: " + string(ship.hull.hp), 10, room_width / 3 - 2 * margin);
draw_text_ext(leftDetailX + margin, detailSpacing + detailSpacing, "Primary Weapon: " + string(ship.primaryWeapon.name), 10, room_width / 3 - 2 * margin);
draw_text_ext(leftDetailX + margin, detailSpacing + 2 * detailSpacing, "Secondary Weapon: " + string(ship.secondaryWeapon.name), 10, room_width / 3 - 2 * margin);
draw_text_ext(leftDetailX + margin, detailSpacing + 3 * detailSpacing, "Shields: " + string(ship.shields.shieldStatic), 10, room_width / 3 - 2 * margin);

// Calculate the X position for ship details on the right side (right third of the screen)
var rightDetailX = room_width * 2 / 3; // Align to the right

// Draw ship details on the right side
draw_text_ext(rightDetailX + margin, detailSpacing, "Ship Name: " + ship.shipName, 10, room_width / 3 - 2 * margin);
draw_text_ext(rightDetailX + margin, detailSpacing + detailSpacing, "Ship Class: " + ship.shipClass, 10, room_width / 3 - 2 * margin);
draw_text_ext(rightDetailX + margin, detailSpacing + 2 * detailSpacing, "Ship Generation: " + ship.shipGeneration, 10, room_width / 3 - 2 * margin);
draw_text_ext(rightDetailX + margin, detailSpacing + 3 * detailSpacing, "Engine: " + ship.engine.name, 10, room_width / 3 - 2 * margin);
