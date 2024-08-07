/// Mouse Left Pressed event in obj_shopSystem

var currentTime = current_time / 1000;
  var pause_overlay = instance_find(obj_pauseOverlay, 0);
var overlay_instance = instance_find(obj_overlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time

 if (global.lastClickedShopSystem != id) {
		with (obj_shopIntroDoors) {
		instance_destroy(obj_shopIntroDoors);	
		}
		with (obj_shopDoors) {
		instance_destroy(obj_shopDoors);	
		}
        // Clear previously displayed description (if any)
		if (array_length(global.displayedUpgradeDescriptions) > 0) {
            for (var i = 0; i < array_length(global.displayedUpgradeDescriptions); i++) {
                instance_destroy(global.displayedUpgradeDescriptions[i]);
            }
            global.displayedUpgradeDescriptions = []; // Clear the array
		}
		

		global.shoppingSystem = systemType;
		
        global.lastClickedShopSystem = id;

        // Create a display box object in the middle of the room
        var displayBox = instance_create_layer(room_width / 2, room_height / 2, "Items", obj_shopDisplayBox);
		 var shopDoors = instance_create_layer(room_width / 2, room_height / 2, "Items", obj_shopDoors);
		 shopDoors.firstClick = global.shopFirstClick;
		 global.shopFirstClick = false;
        // Define grid layout parameters
    
        
        // Calculate the starting position at the top middle of obj_shopDisplayBox. the +64 helps to complensate for sprite size
        var start_x = displayBox.x - (columns / 2 * spacing_x) + 32;
        var start_y = displayBox.y - 175; // Adjust as needed for vertical position

        // Iterate through currentArray (replace with your actual array variable)
        var yOffset = 0;
        var count = 0; // Counter for the number of created instances
        var current_column = 0;
        var current_row = 0;

        for (var i = 0; i < total_items; i++) {
            var currentUpgrade = target[i];
			if (!currentUpgrade.systemStatus.destroyed && !currentUpgrade.systemStatus.basic) {
			
            var instance_x = start_x + current_column * spacing_x;
            var instance_y = start_y + current_row * spacing_y;

            var shopUpgradeInstance = instance_create_layer(instance_x, instance_y + yOffset, "Items", obj_shopUpgrade);
            
            upgradeName = currentUpgrade.name;
            isOwned = currentUpgrade.systemStatus.isOwned;
            unlocked = currentUpgrade.systemStatus.unlocked;
            
            shopUpgradeInstance.array_index = i; // Store the array index
            shopUpgradeInstance.systemType = systemType; // Set system type
            shopUpgradeInstance.cost = currentUpgrade.systemStatus.cost;
            shopUpgradeInstance.upgradeName = upgradeName;
            shopUpgradeInstance.isOwned = isOwned;
            shopUpgradeInstance.unlocked = unlocked;
            shopUpgradeInstance.item = currentUpgrade;
            shopUpgradeInstance.target = target;
			
		    // Create obj_shopUpgradeDescription instance for the current shop item
            var descriptionText = instance_create_layer(instance_x + 32, instance_y + yOffset + 64, "Items", obj_shopUpgradeDescription);
            descriptionText.text = currentUpgrade.name; // Set the description text
			descriptionText.cost = currentUpgrade.systemStatus.cost;
			descriptionText.unlocked = unlocked
			descriptionText.isOwned = isOwned
			descriptionText.array_index = i;
			descriptionText.systemType = systemType;
            // Store the displayed description instance ID in an array
			
            global.displayedUpgradeDescriptions[array_length(global.displayedUpgradeDescriptions)] = descriptionText;

            // Increment count for the number of created instances
            current_column++;
            if (current_column >= columns) {
                current_column = 0; // Reset the column count
                current_row++; // Move to the next row
            }
			}
			else {
				continue;
			}
        }
    } else {
        // This object is the last clicked object
        show_debug_message("This object was already clicked. Click another object first.");
    
 }
}
}
