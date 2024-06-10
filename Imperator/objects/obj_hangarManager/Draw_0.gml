// Set up text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Set up text font and color
draw_set_font(font_arial2);
draw_set_color(c_white);

// Draw the title
var titleText = "Hangar Manager - Choose Your Ship";
var titleX = room_width / 2 - string_width(titleText) / 2;
var titleY = 20;
draw_text(titleX, titleY, titleText);

// Draw available ships
var shipSpacing = 150; // Vertical spacing between ships
var startY = 80; // Starting Y position for ships
var currentY = startY;

// Loop through available ships
for (var i = 0; i < array_length(global.playerShips); i++) {
    var ship = global.playerShips[i];
    
    // Check if the ship is owned by the player
    if (ship.isOwned) {
		show_debug_message(" ship drawn.");
        // Draw ship sprite
        draw_sprite(ship.spriteStatic, 0, 50, currentY);
        
        // Draw ship name
        draw_text(200, currentY, ship.shipName);
        
        // Draw ship class
        draw_text(200, currentY + 20, "Class: " + ship.shipClass);
        
        // Draw ship generation
        draw_text(200, currentY + 40, "Generation: " + ship.shipGeneration);
        
       
        // Positioning below the ship sprite with spacing
        draw_sprite(spr_shopPurchase, 0, 200, currentY + 60);
        
        // Increment Y position for next ship
        currentY += shipSpacing;
    }
}

// Reset text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
