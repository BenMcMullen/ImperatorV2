
var currentTime = current_time / 1000
//this is a debounce mechanism to prevent spamming multiple clicks in a few frames.
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
	
    lastClickTime = currentTime; // Update the last click time
    
    var clickedItemIndex = -1;
    
    // Check if any shop item's purchase box sprite is clicked
    for (var i = 0; i < array_length(global.shopItems); i++) {
        var item = global.shopItems[i];
        
        // Calculate the bounding box of the purchase box sprite
        var purchaseBoxWidth = sprite_get_width(spr_select);
        var purchaseBoxHeight = sprite_get_height(spr_select);
        var purchaseBoxX1 = item.x - 85;
        var purchaseBoxY1 = item.y + 120; // Positioning below the sprite, price, and name texts
        var purchaseBoxX2 = purchaseBoxX1 + purchaseBoxWidth;
        var purchaseBoxY2 = purchaseBoxY1 + purchaseBoxHeight;
        
        // Check if the mouse click is within the bounding box of the purchase box sprite
        if (mouse_x > purchaseBoxX1 && mouse_x < purchaseBoxX2 && mouse_y > purchaseBoxY1 && mouse_y < purchaseBoxY2) {
            clickedItemIndex = i; // Store the index of the clicked item
            break;
        }
    }
    
	
    // If a shop item's purchase box is clicked
    if (clickedItemIndex != -1) {
        var clickedItem = global.shopItems[clickedItemIndex];
        
        // Check if the player has enough points to purchase the item
        if (global.totalPoints >= clickedItem.price) {
            global.totalPoints -= clickedItem.price;
            variable_global_set(clickedItem.globalVar, true);
			showMessage = true;
            messageText = clickedItem.itemName + " was purchased!"; // Success message
            show_debug_message("Purchased " + clickedItem.globalVar);
        } else {
            // Set the message variables
            showMessage = true;
            messageText = "You haven't gathered enough contract points for " + clickedItem.itemName + "!";
            show_debug_message("Not enough money or out of stock");
        }
    }
}
