// obj_hangarManager - Draw Event
draw_self();
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
var shipSpacing = 150; // Vertical spacing between ships
var textVerticalOffset = 20; // Vertical offset 
var startY = 80; // Starting Y position for ships
var currentY = startY;

for (var i = 0; i < array_length(global.playerShips); i++) {
	 var ship = global.playerShips[i];
    
    if (ship.isOwned) {
		
    
        
        // Draw ship sprite
        draw_sprite(ship.spriteStatic, 0, 50, currentY);
        
        // Draw ship name
        draw_text(200, currentY, ship.shipName);
        
        // Draw ship class
        draw_text(200, currentY + 20, "Class: " + ship.shipClass);
        
        // Draw ship generation
        draw_text(200, currentY + 40, "Generation: " + ship.shipGeneration);
        
        // Draw the purchase button sprite
        draw_sprite(spr_select, 0, 200, currentY + 60);
        
        // Increment Y position for next ship
        currentY += shipSpacing;
  
}

// Drawing the message box (unchanged)
if (showMessage) {
    var boxWidth = sprite_get_width(spr_shopMessage);
    var boxHeight = sprite_get_height(spr_shopMessage);
    var boxX = (room_width - boxWidth) / 2;
    var boxY = (room_height - boxHeight) / 2;

    draw_sprite(spr_shopMessage, 0, boxX, boxY);
    
    var textX = boxX + boxWidth / 2;
    var textY = boxY + boxHeight / 2;
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(textX, textY, messageText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
}
