
    
	
	//There is an issue here, and that is that after we purchase something, we are still dealing
	//with the same state of the upgrade from the array. The only way to change this is 
	//to run some sort of script that goes and updates the global array we are modifying,
	//That then returns the same index we are handling here, but updated.
    if (other.cost < global.totalPoints && !other.isOwned && other.unlocked) {
		global.totalPoints -= other.cost;
		other.item.isOwned = true;
		
        
		 var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeMessage);
		
		sprite_index = spr_ownedSystemUpgrade; // Change large box sprite to the small box sprite
             
        messageText = other.upgradeName + " was purchased!"; // Success message
			shopItemInstance.messageText = messageText;
			
			
    } else if (!other.unlocked) {
		show_debug_message("locked");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeMessage);
        messageText = "You haven't unlocked this upgrade yet!";
		shopItemInstance.messageText = messageText;
    }
	else if (other.isOwned) {	
			show_debug_message("owned");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeMessage);
        messageText = "You already own " + other.upgradeName + "!";
		shopItemInstance.messageText = messageText;
    }
	else {
			show_debug_message("poor");
		var shopItemInstance = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeMessage);

        messageText = "You haven't gathered enough contract points for " + other.upgradeName + "!";
		shopItemInstance.messageText = messageText;
	}