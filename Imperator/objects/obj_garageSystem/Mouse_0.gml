// Mouse Left Pressed event in obj_garageSystem
var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
var currentTime = current_time / 1000;

if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time

    if (global.lastClickedGarageSystem != id) {
        // Clear previously displayed descriptions (if any)
        if (array_length(global.displayedUpgradeDescriptions) > 0) {
            for (var i = 0; i < array_length(global.displayedUpgradeDescriptions); i++) {
                instance_destroy(global.displayedUpgradeDescriptions[i]);
            }
            global.displayedUpgradeDescriptions = []; // Clear the array
        }

        global.garageUpgradingSystem = systemType;
        global.lastClickedGarageSystem = id;

        // Create the overlay object to intercept click

        // Create a display box object in the middle of the room
        var displayBox = instance_create_layer(room_width / 2, room_height / 2, "Systems", obj_garageDisplayBox);

        // Define grid layout parameters
        var start_x = displayBox.x - (columns / 2 * spacing_x) + 32;
        var start_y = displayBox.y - 375; // Adjust as needed for vertical position

        // Iterate through currentArray (replace with your actual array variable)
        var yOffset = 0;
        var count = 0; // Counter for the number of created instances
        var current_column = 0;
        var current_row = 0;

        for (var i = 0; i < total_items; i++) {
            var currentUpgrade = target[i];
			if (currentUpgrade.systemStatus.isOwned && !currentUpgrade.systemStatus.destroyed && DisplayGarageSystem(currentUpgrade)) {

            var instance_x = start_x + current_column * spacing_x;
            var instance_y = start_y + current_row * spacing_y;

            var shopUpgradeInstance = instance_create_layer(instance_x, instance_y + yOffset, "Systems", obj_garageUpgrades);

            // Set sprite index and properties for obj_shopUpgrade instance
          
                shopUpgradeInstance.sprite_index = currentUpgrade.systemSprite; // Assuming items_array contains sprite_index information
            

            // Assign creator_id to match obj_garageSystem id
            shopUpgradeInstance.creator_id = id;

            // Assign systemType to the upgrade instance
            shopUpgradeInstance.systemType = systemType; // Ensure systemType is correctly set here

            // Assign other properties as needed
            shopUpgradeInstance.array_index = i;
            shopUpgradeInstance.cost = currentUpgrade.systemStatus.cost;
            shopUpgradeInstance.upgradeName = currentUpgrade.name;
            shopUpgradeInstance.isOwned = currentUpgrade.systemStatus.isOwned;
            shopUpgradeInstance.unlocked = currentUpgrade.systemStatus.unlocked;
            shopUpgradeInstance.item_data = currentUpgrade;
            shopUpgradeInstance.target = target;

            // Create and store upgrade description instances
            var descriptionText = instance_create_layer(instance_x + 32, instance_y + yOffset + 64, "Systems", obj_garageUpgradeDescription);
            descriptionText.text = currentUpgrade.name;
            descriptionText.unlocked = currentUpgrade.systemStatus.unlocked;
			descriptionText.array_index = i;
			descriptionText.systemType = systemType;
            global.displayedUpgradeDescriptions[array_length(global.displayedUpgradeDescriptions)] = descriptionText;

            // Update grid position
            current_column++;
            if (current_column >= columns) {
                current_column = 0;
                current_row++;
            }
        } 
		else {
			continue;
		
		}  
		}
    } else {
        // This object is the last clicked object
        show_debug_message("This object was already clicked. Click another object first.");
        global.lastClickedGarageSystem = noone;
        // Destroy all obj_garageUpgrades instances and text instances and the display box
        with (obj_garageUpgrades) {      
            instance_destroy();
        }

        with (obj_garageDisplayBox) {
            instance_destroy();
        }
        with (obj_garageUpgradeDescription) {
            instance_destroy();
        }
    }
}
}