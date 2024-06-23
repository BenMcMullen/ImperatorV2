
   var overlay_instance = instance_find(obj_overlay, 0);
if (!instance_exists(overlay_instance)) {
	var array_index = other.array_index;
	var systemType = other.systemType;
	var upgrade = GetUpgrade(array_index, systemType);
	var confirmationWidth = room_width/2;
	var confirmationHeight = room_height/2;
	
	
    if (upgrade.cost < global.playerInformation.points && !upgrade.isOwned && upgrade.unlocked) {
		global.playerInformation.points -= upgrade.cost;
		
			
		
		 var shopConfirmation = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopConfirmationScreen);
		 shopConfirmation.upgradeName = upgrade.name;
		
             

        messageText = "Are you sure you want to purchase the " + upgrade.name + " upgrade?"; // Success message
		shopConfirmation.messageText = messageText;
		shopConfirmation.array_index = array_index
		shopConfirmation.systemType = systemType
			
			
		var yesButton = instance_create_layer(confirmationWidth + 130, confirmationHeight + 55, "Items", obj_shopYesButton); // Adjust positions as needed
		yesButton.array_index = array_index;
		yesButton.systemType = systemType;
		yesButton.messageText = "You have purchased the " + upgrade.name + "!";
		
		var noButton = instance_create_layer(confirmationWidth - 180, confirmationHeight + 55, "Items", obj_shopNoButton); // Adjust positions as needed
		
			
    } else if (!upgrade.unlocked) {
		show_debug_message("locked");
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);
        messageText = "You haven't unlocked this upgrade yet!";
		shopUpgradeInstance.messageText = messageText;
    }
	else if (upgrade.isOwned) {	
			show_debug_message("owned");
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);
        messageText = "You already own " + upgrade.name + "!";
		shopUpgradeInstance.messageText = messageText;
    }
	else {
			show_debug_message("poor");
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);

        messageText = "You haven't gathered enough contract points for " + upgrade.name + "!";
		shopUpgradeInstance.messageText = messageText;
	}
	}