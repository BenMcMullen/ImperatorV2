// obj_shop - Mouse Left Pressed Event
if (!clickProcessed) {
    clickProcessed = true;
    
    var clickedItemIndex = -1;
    
    // Check if any shop item sprite is clicked
    for (var i = 0; i < array_length(global.shopItems); i++) {
        var item = global.shopItems[i];
        
        // Calculate the bounding box of the item sprite
        var spriteWidth = sprite_get_width(item.sprite);
        var spriteHeight = sprite_get_height(item.sprite);
        var spriteX1 = item.x;
        var spriteY1 = item.y;
        var spriteX2 = spriteX1 + spriteWidth;
        var spriteY2 = spriteY1 + spriteHeight;
        
        // Check if the mouse click is within the bounding box of the item sprite
        if (mouse_x > spriteX1 && mouse_x < spriteX2 && mouse_y > spriteY1 && mouse_y < spriteY2) {
            clickedItemIndex = i; // Store the index of the clicked item
            break;
        }
    }
    
    // If a shop item is clicked
    if (clickedItemIndex != -1) {
        var clickedItem = global.shopItems[clickedItemIndex];
        
        // Check if the player has enough points to purchase the item
        if (global.totalPoints >= clickedItem.price) {
            global.totalPoints -= clickedItem.price;
            global[clickedItem.globalVar] = true;
            show_debug_message("Purchased " + clickedItem.globalVar);
        } else {
            // Check if the message has already been shown for this click
            if (!showMessage) {
                // Set the message variables
                showMessage = true;
                messageText = "You haven't gathered enough contract points for " + clickedItem.itemName + "!";
                show_debug_message("Not enough money or out of stock");
            }
        }
    }
}
