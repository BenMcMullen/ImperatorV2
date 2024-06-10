draw_self();

// Draw the ship sprite in the middle of the screen
draw_sprite(global.selectedShip.sprite, 0, room_width / 2 - sprite_get_width(global.selectedShip.sprite) / 2, room_height / 2 - sprite_get_height(global.selectedShip.sprite) / 2);

// Draw the back button
draw_rectangle(backButtonX, backButtonY, backButtonX + backButtonWidth, backButtonY + backButtonHeight, true);
draw_text(backButtonX + backButtonWidth / 2, backButtonY + backButtonHeight / 2, "Back");

// Draw ship details
for (var i = 0; i < ds_list_size(sections); i++) {
    var section = ds_list_find_value(sections, i);
    var shipDetail = "";
	
    switch (i) {
        case 0: shipDetail = "HP: " + string(global.selectedShip.hp); break;
        case 1: shipDetail = "Engines: " + string(global.selectedShip.engines); break;
        case 2: shipDetail = "Primary Weapon: " + global.selectedShip.primaryWeapon; break;
        case 3: shipDetail = "Secondary Weapon: " + global.selectedShip.secondaryWeapon; break;
        case 4: shipDetail = "Shields: " + string(global.selectedShip.shields); break;
        case 5: shipDetail = "Ship Name: " + global.selectedShip.shipName; break;
        case 6: shipDetail = "Ship Class: " + global.selectedShip.shipClass; break;
        case 7: shipDetail = "Ship Generation: " + global.selectedShip.shipGeneration; break;
    }
    
    draw_text(section.x, section.y, shipDetail);
}