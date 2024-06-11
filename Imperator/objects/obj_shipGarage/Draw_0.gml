draw_self();

// Scale factor for the sprite
var scaleFactor = 5.0; // Scale the sprite by a factor of 5

// Get the original width and height of the sprite
var spriteWidth = sprite_get_width(global.selectedShip.spriteStatic);
var spriteHeight = sprite_get_height(global.selectedShip.spriteStatic);
var spriteX = room_width / 2 - spriteWidth / 2;
var spriteY = room_height / 2 - spriteHeight / 2;

// Draw the ship sprite
draw_sprite_ext(global.selectedShip.spriteStatic, 0, spriteX, spriteY, scaleFactor, scaleFactor, 0, c_white, 1);

// Margin for ship details
var margin = 20;

// Calculate the vertical spacing between ship details
var detailSpacing = room_height / 4;

// Calculate the X position for ship details on the left side (left third of the screen)
var leftDetailX = margin; // Align to the left

// Draw ship details on the left side
for (var i = 0; i < 4; i++) {
    var section = ds_list_find_value(sections, i);
    var shipDetail = "";

    switch (i) {
        case 0: shipDetail = "HP: " + string(global.selectedShip.hull.hp); break;
        case 1: shipDetail = "Primary Weapon: " + string(global.selectedShip.primaryWeapon.name); break;
        case 2: shipDetail = "Secondary Weapon: " + string(global.selectedShip.secondaryWeapon.name); break;
        case 3: shipDetail = "Shields: " + string(global.selectedShip.shields.shieldStatic); break;
    }
    
    // Calculate the Y position for ship details in the first quarter of the height
    var detailY = room_height / 8; // Center of one quarter of the height
    
    // Draw ship details with left alignment and margin
    draw_text_ext(leftDetailX + margin, detailY + i * detailSpacing, shipDetail, 10, room_width / 3 - 2 * margin);
}

// Calculate the X position for ship details on the right side (right third of the screen)
var rightDetailX = room_width * 2 / 3; // Align to the right

// Draw ship details on the right side
for (var i = 4; i < 8; i++) {
    var section = ds_list_find_value(sections, i);
    var shipDetail = "";

    switch (i) {
        case 4: shipDetail = "Ship Name: " + global.selectedShip.shipName; break;
        case 5: shipDetail = "Ship Class: " + global.selectedShip.shipClass; break;
        case 6: shipDetail = "Ship : " + global.selectedShip.shipGeneration; break;
        case 7: shipDetail = "Engine : " + global.selectedShip.engine.name; break;
    }

    // Calculate the Y position for ship details in the third quarter of the height
    var detailY = room_height / 8; // Center of third quarter of the height
    
    // Draw ship details with right alignment and margin
    draw_text_ext(rightDetailX + margin, detailY + (i - 4) * detailSpacing, shipDetail, 10, room_width / 3 - 2 * margin);
}
