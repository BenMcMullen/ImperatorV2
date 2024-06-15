
    
	
	/// we made this can purchase script. unforunately, we still need to actually get the cost and subtract it. blech.
    // Check if the player has enough points to purchase the item
    if (other.cost < global.totalPoints && !other.isOwned && other.unlocked) {
		global.totalPoints -= other.cost;
		other.item.isOwned = true;
		show_debug_message("we get here");
        
		 var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_purchaseUpgradeMessage);
		
		sprite_index = spr_ownedSystemUpgrade; // Change large box sprite to the small box sprite
             
        messageText = other.upgradeName + " was purchased!"; // Success message
			shopItemInstance.messageText = messageText;
			
			
    } else if (!other.unlocked) {
		show_debug_message("locked");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_purchaseUpgradeMessage);
        messageText = "You haven't unlocked this upgrade yet!";
		shopItemInstance.messageText = messageText;
    }
	else if (other.isOwned) {	
			show_debug_message("owned");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_purchaseUpgradeMessage);
        messageText = "You already own " + other.upgradeName + "!";
		shopItemInstance.messageText = messageText;
    }
	else {
			show_debug_message("poor");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_purchaseUpgradeMessage);

        messageText = "You haven't gathered enough contract points for " + other.upgradeName + "!";
		shopItemInstance.messageText = messageText;
	}