// obj_shop - Mouse Left Down Event
var clickedItemIndex = -1;

// Check if any shop item's purchase box sprite is clicked
for (var i = 0; i < array_length(global.shopItems); i++) {
    var item = global.shopItems[i];
    
    // Calculate the bounding box of the purchase box sprite
    var purchaseBoxX = item.x - 85;
    var purchaseBoxY = item.y + 120; // Positioning below the sprite, price, and name texts
    var purchaseBoxWidth = sprite_get_width(spr_purchase);
    var purchaseBoxHeight = sprite_get_height(spr_purchase);
    
    // Check if the mouse click is within the bounding box of the purchase box sprite
    if (mouse_x > purchaseBoxX && mouse_x < purchaseBoxX + purchaseBoxWidth &&
        mouse_y > purchaseBoxY && mouse_y < purchaseBoxY + purchaseBoxHeight) {
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
        global.shopItems[clickedItemIndex].purchased = true;
        showMessage = true;
        messageText = clickedItem.itemName + " was purchased!"; // Success message
        
        // Set the sprite frame to indicate a click for a brief period
        clickedItem.frameIndex = 2; // Set to clicked frame
        
        // Set an alarm to reset the frame to static after a short delay
        alarm[0] = room_speed * 0.1; // Adjust the time as needed
    } else {
        // Set the message variables
        showMessage = true;
        messageText = "You haven't gathered enough contract points for " + clickedItem.itemName + "!";
        show_debug_message("Not enough money or out of stock");
    }
}
