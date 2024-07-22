   var pause_overlay = instance_find(obj_overlayPause, 0);
   var overlay_instance = instance_find(obj_overlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
	var array_index = other.array_index;
	var systemType = other.systemType;
	var upgrade = GetUpgrade(array_index, systemType);
	var confirmationWidth = room_width/2;
	var confirmationHeight = room_height/2;
	
	
    if ((upgrade.systemStatus.cost < global.playerInformation.points) && !upgrade.systemStatus.isOwned && upgrade.systemStatus.unlocked) {
		
		
		 var shopConfirmation = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopConfirmationScreen);
		 shopConfirmation.upgradeName = upgrade.name;
		
             

        messageText = "Are you sure you want to purchase the " + upgrade.name + " upgrade?"; // Success message
		shopConfirmation.messageText = messageText;
		shopConfirmation.array_index = array_index
		shopConfirmation.systemType = systemType
			
			
		var yesButton = instance_create_layer(confirmationWidth + 130, confirmationHeight + 55, "Items", obj_shopYesButton); // Adjust positions as needed
		yesButton.array_index = array_index;
		yesButton.systemType = systemType;
		yesButton.cost = upgrade.systemStatus.cost;
		yesButton.messageText = "You have purchased the " + upgrade.name + "!";
		
		
		var noButton = instance_create_layer(confirmationWidth - 180, confirmationHeight + 55, "Items", obj_shopNoButton); // Adjust positions as needed
		
			
    } else if (!upgrade.systemStatus.unlocked) {
		
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);
        messageText = "You haven't unlocked this upgrade yet!";
		shopUpgradeInstance.messageText = messageText;
    }
	else if (upgrade.systemStatus.isOwned) {	
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);
        messageText = "You already own " + upgrade.name + "!";
		shopUpgradeInstance.messageText = messageText;
    }
	else {
		var shopUpgradeInstance = instance_create_layer(confirmationWidth, confirmationHeight, "Items", obj_shopUpgradeMessage);

        messageText = "You haven't gathered enough contract points for " + upgrade.name + "!";
		shopUpgradeInstance.messageText = messageText;
	}
	}