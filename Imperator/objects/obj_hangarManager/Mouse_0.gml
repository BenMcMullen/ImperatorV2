var currentTime = current_time / 1000;

// This is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time
    
    var clickedShipIndex = -1;
    var startY = 80; // Starting Y position for ships
    var shipSpacing = 150; // Vertical spacing between ships
    
    // Check if any ship's purchase box sprite is clicked
    for (var i = 0; i < array_length(global.playerShips); i++) {
        var ship = global.playerShips[i];
        
        // Calculate the bounding box of the select sprite based on the drawing position
        var selectBoxWidth = sprite_get_width(spr_select);
        var selectBoxHeight = sprite_get_height(spr_select);
        var selectBoxX1 = 200; 
        var selectBoxY1 = startY + (i * shipSpacing) + 60; 
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
        global.selectedShip = clickedShip;
        show_debug_message(clickedShip.shipName + " was selected.");
        LoadShipGarage();
    }
}
