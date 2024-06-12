// obj_hangarManager - Draw Event
draw_self();
// Set up text alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Set up text font and color
draw_set_font(font_venite);
draw_set_color(c_white);

// Draw the title
var titleText = "Hangar Manager - Choose Your Ship";
var titleX = room_width / 2 - string_width(titleText) / 2;
var titleY = 20;
draw_text(titleX, titleY, titleText);

var columnCount = 2; // Number of columns
var rowSpacing = 150; // Vertical spacing between rows
var colSpacing = room_width / columnCount; // Horizontal spacing based on column count
var textVerticalOffset = 20; // Vertical offset for text
var startX = 50; // Starting X position for the first column
var startY = 80; // Starting Y position for the first row

for (var i = 0; i < array_length(global.playerShips); i++) {
    var ship = global.playerShips[i];

    if (ship.isOwned) {
        var col = i % columnCount; // Column index (0 or 1)
        var row = i div columnCount; // Row index

        var posX = startX + col * colSpacing;
        var posY = startY + row * rowSpacing;
        
        // Draw ship sprite
        draw_sprite(ship.sprites.spriteHangar, 0, posX, posY);
        
        // Draw ship name
        draw_text(posX + 150, posY, ship.shipName);
        
        // Draw ship class
        draw_text(posX + 150, posY + 20, "Class: " + ship.shipClass);
        
        // Draw ship generation
        draw_text(posX + 150, posY + 40, "Generation: " + ship.shipGeneration);
        
        // Draw the select button sprite
        draw_sprite(spr_select, 0, posX + 150, posY + 60);
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
