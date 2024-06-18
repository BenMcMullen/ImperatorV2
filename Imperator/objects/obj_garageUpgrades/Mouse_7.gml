// obj_garageUpgrades Left Mouse Button Release Event
if (mouse_check_button_released(mb_left)) {
    if (drag) {
        // Define the collision rectangle
       
        var left = obj_garageShipDisplay.x;
        var right =  obj_garageShipDisplay.x + sprite_get_width(global.selectedShip.sprites.spriteGarage); // Get the width of obj_garageShipDisplay sprite
        var top =  obj_garageShipDisplay.y;
        var bottom =  obj_garageShipDisplay.y + sprite_get_height(global.selectedShip.sprites.spriteGarage); // Get the height of obj_garageShipDisplay sprite
        show_debug_message(bottom);
        // Store upgrade data locally
        var upgradeData = item_data;
        var upgradeDataType = systemType;
        
        // Check if obj_garageUpgrades is dropped inside obj_garageShipDisplay
        var target = collision_rectangle(left, top, right, bottom, obj_garageShipDisplay, true, true);

        if (target != noone) {
            // Object is dropped inside the large box

            with (target) {
                // Check if the creator_id of the upgrade matches the garage system's ID
                var sourceGarageSystem = instance_find(other.creator_id, 0); // Find the source garage system instance
                if (sourceGarageSystem != noone && sourceGarageSystem.id == other.creator_id) {
                    // Check if there is already a contained object
                    if (contained_object != noone) {
                        // Move the old contained object back to its original position
                        with (contained_object) {
                            x = start_x;
                            y = start_y;
                        }
                    }
                    // Update the large box to contain this new object (obj_garageSystem)
                    
                    systemSprite = sourceGarageSystem.sprite_index; // Set the systemSprite to the sprite of the garage system

                    // Access `system` data from obj_garageUpgrades through `item_data` to upgrade
                    UpgradeShip(upgradeData, upgradeDataType);
                    
                    // Optionally create a message instance
                    var shopItemInstance = instance_create_layer(x / 2, y / 2, "Systems", obj_garageUpgradeMessage);
                    shopItemInstance.messageText = (upgradeData.name + " installed to " + upgradeDataType + " system");
                } else {
                    show_debug_message("creator_id mismatch: expected " + string(sourceGarageSystem.creator_id) + ", got " + string(sourceGarageSystem.id));
                }
            }
        }

        // Snap back obj_garageUpgrades to its original position
        x = start_x;
        y = start_y;

        drag = false; // End the drag operation
    }
}
