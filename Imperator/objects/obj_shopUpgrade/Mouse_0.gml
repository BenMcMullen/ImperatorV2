
                // Update the large box to contain this new object
                sprite_index = spr_ownedSystemUpgrade; // Change large box sprite to the small box sprite
                image_index = 0; // Optionally reset the image_index if using animated sprites
                
                // Access `system` data from obj_shipSystemsLarge through `item_data`
				PurchaseSystem(other.array_index, other.system_type)
			
                show_debug_message(other.system_type);
				 show_debug_message(other.array_index);
                // Now you can use `system_data` as needed
         

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