var currentTime = current_time / 1000;

// This is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time
    
    var clickedShipIndex = -1;
    
    // Check if any ship's purchase box sprite is clicked
    for (var i = 0; i < array_length(global.playerShips); i++) {
        var ship = global.playerShips[i];
        show_debug_message( " was selected.");
        // Calculate the bounding box of the slect sprite
        var purchaseBoxWidth = sprite_get_width(spr_select);
        var purchaseBoxHeight = sprite_get_height(spr_select);
        var purchaseBoxX1 = 200; 
        var purchaseBoxY1 = ship.y + 60; 
        var purchaseBoxX2 = purchaseBoxX1 + purchaseBoxWidth;
        var purchaseBoxY2 = purchaseBoxY1 + purchaseBoxHeight;
        
        // Check if the mouse click is within the bounding box
        if (mouse_x > purchaseBoxX1 && mouse_x < purchaseBoxX2 && mouse_y > purchaseBoxY1 && mouse_y < purchaseBoxY2) {
            clickedShipIndex = i; // Store the index of the clicked item
			show_debug_message(" was selected.");
            break;
        }
    }
    
    if (clickedShipIndex != -1) {
        var clickedShip = global.playerShips[clickedShipIndex];
        
        show_debug_message(clickedShip.shipName + " was selected.");
		 LoadShipGarage();
    }
}