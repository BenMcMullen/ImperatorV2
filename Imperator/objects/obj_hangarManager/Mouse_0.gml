var currentTime = current_time / 1000;

// This is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time
    
    var clickedShipIndex = -1;
    var columnCount = 2; // Number of columns
    var rowSpacing = 150; // Vertical spacing between rows
    var colSpacing = room_width / columnCount; // Horizontal spacing based on column count
    var startX = 50; // Starting X position for the first column
    var startY = 120; // Starting Y position for the first row
    
    // Check if any ship's select box sprite is clicked
    for (var i = 0; i < array_length(global.playerShips); i++) {
        var ship = global.playerShips[i];
        
        // Calculate the column and row for this ship
        var col = i % columnCount; // Column index (0 or 1)
        var row = i div columnCount; // Row index
        
        var posX = startX + col * colSpacing;
        var posY = startY + row * rowSpacing;
        
        // Calculate the bounding box of the select sprite based on the drawing position
        var selectBoxWidth = sprite_get_width(spr_select);
        var selectBoxHeight = sprite_get_height(spr_select);
        var selectBoxX1 = posX + 150; 
        var selectBoxY1 = posY + 60; 
        var selectBoxX2 = selectBoxX1 + selectBoxWidth;
        var selectBoxY2 = selectBoxY1 + selectBoxHeight;
        
        // Check if the mouse click is within the bounding box
        if (mouse_x > selectBoxX1 && mouse_x < selectBoxX2 && mouse_y > selectBoxY1 && mouse_y < selectBoxY2) {
            clickedShipIndex = i; // Store the index of the clicked item
            break;
        }
    }
    
    if (clickedShipIndex != -1) {
        var clickedShip = global.playerShips[clickedShipIndex];
        
        if (array_length(clickedShip.shields) > 0) {
            clickedShip.shields.shieldStatic = clickedShip.shields.shieldActiveConsume;
        }
        
        global.selectedShip = clickedShip;
        show_debug_message(clickedShip.shipName + " was selected.");
        LoadShipGarage();
    }
}
