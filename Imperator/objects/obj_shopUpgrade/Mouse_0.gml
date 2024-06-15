
    
	
	/// we made this can purchase script. unforunately, we still need to actually get the cost and subtract it. blech.
    // Check if the player has enough points to purchase the item
    if (other.cost < global.totalPoints) {
		global.totalPoints -= other.cost;
		show_debug_message("we get here");
        
		
		sprite_index = spr_ownedSystemUpgrade; // Change large box sprite to the small box sprite
              
        showMessage = true;
        messageText = clickedItem.itemName + " was purchased!"; // Success message
        
   
    } else {
        // Set the message variables
        showMessage = true;
        messageText = "You haven't gathered enough contract points for " + clickedItem.itemName + "!";
        show_debug_message("Not enough money or out of stock");
    }