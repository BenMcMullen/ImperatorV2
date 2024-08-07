// obj_garageUpgrades Left Mouse Button Release Event
var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
if (mouse_check_button_released(mb_left)) {
    if (drag) {
        // Define the collision rectangle
      
        var left = obj_garageShipDisplay.x;
        var right =  obj_garageShipDisplay.x + sprite_get_width(global.selectedShip.sprites.spriteGarage); // Get the width of obj_garageShipDisplay sprite
        var top =  obj_garageShipDisplay.y;
        var bottom =  obj_garageShipDisplay.y + sprite_get_height(global.selectedShip.sprites.spriteGarage); // Get the height of obj_garageShipDisplay sprite

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
				if (upgradeData.systemStatus.systemPoints > GetSystemLimit(upgradeDataType)) {
					   var shopUpgradeInstance = instance_create_layer(x / 2, y / 2, "Systems", obj_garageUpgradeMessage);
						shopUpgradeInstance.messageText = (upgradeData.name + " exceeds " + upgradeDataType + " system size!");
						audio_play_sound(snd_denied, 1, false);
				} else {
                
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
					audio_play_sound(snd_upgrade, 1, false);
                    
                    // Optionally create a message instance
                    var shopUpgradeInstance = instance_create_layer(x / 2, y / 2, "Systems", obj_garageUpgradeMessage);
                    shopUpgradeInstance.messageText = (upgradeData.name + " installed to " + upgradeDataType + " system");
				
                }
            }
        }

        // Snap back obj_garageUpgrades to its original position
        x = start_x;
        y = start_y;

        drag = false; // End the drag operation
    }
}
}