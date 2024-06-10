var currentTime = current_time / 1000;

// This is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time
    
    var clickedShipIndex = -1;
    
    // Check if any ship's purchase box sprite is clicked
    for (var i = 0; i < array_length(global.playerShips); i++) {
        var ship = global.playerShips[i];
        show_debug_message( " was selected.");
        // Calculate the bounding box of the purchase box sprite
        var purchaseBoxWidth = sprite_get_width(spr_shopPurchase);
        var purchaseBoxHeight = sprite_get_height(spr_shopPurchase);
        var purchaseBoxX1 = 200; // X position of the purchase box sprite
        var purchaseBoxY1 = ship.y + 60; // Y position of the purchase box sprite
        var purchaseBoxX2 = purchaseBoxX1 + purchaseBoxWidth;
        var purchaseBoxY2 = purchaseBoxY1 + purchaseBoxHeight;
        
        // Check if the mouse click is within the bounding box of the purchase box sprite
        if (mouse_x > purchaseBoxX1 && mouse_x < purchaseBoxX2 && mouse_y > purchaseBoxY1 && mouse_y < purchaseBoxY2) {
            clickedShipIndex = i; // Store the index of the clicked item
			show_debug_message(" was selected.");
            break;
        }
    }
    
    if (clickedShipIndex != -1) {
        var clickedShip = global.playerShips[clickedShipIndex];
        
        // Add your logic here for what happens when the purchase box is clicked
        // For example, you can show a message indicating the ship was selected
        show_debug_message(clickedShip.shipName + " was selected.");
    }
}
