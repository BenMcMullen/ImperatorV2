// obj_hangarManager - Draw Event

draw_self();

// Set up text alignment and font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_venite);


// Draw the title
var titleText = "Hangar Manager - Choose Your Ship";
var titleX = room_width / 2 - string_width(titleText) / 2;
var titleY = 80;
draw_set_color(c_black);
draw_text(titleX, titleY, titleText);
draw_set_color(c_white);
draw_text(titleX+2, titleY-2, titleText);
// Constants for layout
var columnCount = 2;
var rowSpacing = 150;
var colSpacing = room_width / columnCount;
var textVerticalOffset = 20;
var startX = 50;
var startY = 120;

// Loop through player ships
for (var i = 0; i < array_length(global.playerShips); i++) {
    var ship = global.playerShips[i];

    if (ship.isOwned && ship.destroyed == false) {
        // Calculate position
        var col = i % columnCount;
        var row = i div columnCount;
        var posX = startX + col * colSpacing;
        var posY = startY + row * rowSpacing;
        
        // Draw ship sprite
        draw_sprite(ship.sprites.spriteHangar, 0, posX, posY);
        
        // Draw ship details
		draw_set_color(c_black);
        draw_text(posX + 150, posY, ship.shipName);
		draw_set_color(c_white);
        draw_text(posX + 152, posY -2, ship.shipName);
		draw_set_color(c_black);
        draw_text(posX + 150, posY + 20, "Class: " + ship.shipClass);
		draw_set_color(c_white);
        draw_text(posX + 152, posY + 18, "Class: " + ship.shipClass);
		draw_set_color(c_black);
        draw_text(posX + 150, posY + 40, "Generation: " + ship.shipGeneration);
		draw_set_color(c_white);
        draw_text(posX + 152, posY + 38, "Generation: " + ship.shipGeneration);
        
        // Determine which frame of spr_select to draw based on mouse state
        var isMouseOver = (mouse_x > posX + 150 && mouse_x < posX + 150 + sprite_get_width(spr_select) &&
                           mouse_y > posY + 60 && mouse_y < posY + 60 + sprite_get_height(spr_select));
        
        var frameIndex = 0; // Default to static frame
        
        if (isMouseOver) {
            frameIndex = 1; // Mouse hover frame
        }
        
        // Draw the select button sprite
        draw_sprite(spr_select, frameIndex, posX + 150, posY + 60);
    }
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
	draw_set_color(c_black);
    draw_text(textX, textY, messageText);
	draw_set_color(c_white);
    draw_text(textX +2, textY-2, messageText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
