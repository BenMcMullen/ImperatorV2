/// Mouse Left Pressed event in obj_garageSystem

var currentTime = current_time / 1000;

if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time

    if (global.lastClickedGarageSystem != id) {
        // Clear previously displayed description (if any)
        if (array_length(global.displayedUpgradeDescriptions) > 0) {
            for (var i = 0; i < array_length(global.displayedUpgradeDescriptions); i++) {
                instance_destroy(global.displayedUpgradeDescriptions[i]);
            }
            global.displayedUpgradeDescriptions = []; // Clear the array
        }

        global.garageUpgradingSystem = systemType;
        global.lastClickedGarageSystem = id;

        // Create the overlay object to intercept clicks
        var overlay = instance_create_layer(0, 0, "Overlay", obj_overlay);

        // Create a display box object in the middle of the room
        var displayBox = instance_create_layer(room_width / 2, room_height / 2, "Systems", obj_garageDisplayBox);
        

        // Define grid layout parameters
        var start_x = displayBox.x - (columns / 2 * spacing_x) + 64;
        var start_y = displayBox.y - 175; // Adjust as needed for vertical position

        // Iterate through currentArray (replace with your actual array variable)
        var yOffset = 0;
        var count = 0; // Counter for the number of created instances
        var current_column = 0;
        var current_row = 0;

        for (var i = 0; i < total_items; i++) {
            var currentItem = target[i];

            var instance_x = start_x + current_column * spacing_x;
            var instance_y = start_y + current_row * spacing_y;

            var shopItemInstance = instance_create_layer(instance_x, instance_y + yOffset, "Systems", obj_garageUpgrades);

            // Set sprite index and properties for obj_shopUpgrade instance
            if (!currentItem.unlocked) {
                show_debug_message("should be black");
                shopItemInstance.sprite_index = spr_lockedSystemUpgrade;
            } else if (currentItem.isOwned) {
                show_debug_message("should be gray");
                shopItemInstance.sprite_index = spr_ownedSystemUpgrade;
            } else {
                shopItemInstance.sprite_index = currentItem.garageSprite; // Assuming items_array contains sprite_index information
            }

            upgradeName = currentItem.name;
            isOwned = currentItem.isOwned;
            unlocked = currentItem.unlocked;

            shopItemInstance.array_index = i; // Store the array index
            shopItemInstance.systemType = systemType; // Set system type
            shopItemInstance.cost = cost;
            shopItemInstance.upgradeName = upgradeName;
            shopItemInstance.isOwned = isOwned;
            shopItemInstance.unlocked = unlocked;
            shopItemInstance.item = currentItem;
            shopItemInstance.target = target;

            // Create obj_shopUpgradeDescription instance for the current shop item
            var descriptionText = instance_create_layer(instance_x + 32, instance_y + yOffset + 64, "Systems", obj_garageUpgradeDescription);
            descriptionText.text = currentItem.name; // Set the description text
            descriptionText.unlocked = currentItem.unlocked;
            // Store the displayed description instance ID in an array
            global.displayedUpgradeDescriptions[array_length(global.displayedUpgradeDescriptions)] = descriptionText;

            // Increment count for the number of created instances
            current_column++;
            if (current_column >= columns) {
                current_column = 0; // Reset the column count
                current_row++; // Move to the next row
            }
        }
    } else {
        // This object is the last clicked object
        show_debug_message("This object was already clicked. Click another object first.");
    }
}