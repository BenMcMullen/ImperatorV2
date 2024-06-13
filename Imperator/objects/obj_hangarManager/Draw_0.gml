// obj_hangarManager - Draw Event

draw_self();

// Set up text alignment and font
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_venite);
draw_set_color(c_white);

// Draw the title
var titleText = "Hangar Manager - Choose Your Ship";
var titleX = room_width / 2 - string_width(titleText) / 2;
var titleY = 20;
draw_text(titleX, titleY, titleText);

// Constants for layout
var columnCount = 2;
var rowSpacing = 150;
var colSpacing = room_width / columnCount;
var textVerticalOffset = 20;
var startX = 50;
var startY = 80;

// Loop through player ships
for (var i = 0; i < array_length(global.playerShips); i++) {
    var ship = global.playerShips[i];

    if (ship.isOwned) {
        // Calculate position
        var col = i % columnCount;
        var row = i div columnCount;
        var posX = startX + col * colSpacing;
        var posY = startY + row * rowSpacing;
        
        // Draw ship sprite
        draw_sprite(ship.sprites.spriteHangar, 0, posX, posY);
        
        // Draw ship details
        draw_text(posX + 150, posY, ship.shipName);
        draw_text(posX + 150, posY + 20, "Class: " + ship.shipClass);
        draw_text(posX + 150, posY + 40, "Generation: " + ship.shipGeneration);
        
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
    draw_text(textX, textY, messageText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
