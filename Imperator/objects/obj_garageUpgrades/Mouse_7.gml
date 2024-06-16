// obj_garageUpgrades Left Mouse Button Release Event
if (mouse_check_button_released(mb_left)) {
    if (drag) {
        // Check if obj_shipSystems is dropped inside obj_garageSystem
        var target = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_garageSystem, true, true);

        if (target != noone) {
            // Object is dropped inside the large box
            with (target) {
				 if (other.creator_id == id) {
                // Check if there is already a contained object
                if (contained_object != noone) {
                    // Move the old contained object back to its original position
                    with (contained_object) {
                        x = start_x;
                        y = start_y;
                    }
                }
                // Update the large box to contain this new object
                contained_object = other.id;
                systemSprite = other.sprite_index; // Set the systemSprite to the sprite of the dropped object
                image_index = 0; // Optionally reset the image_index if using animated sprites

                // Access `system` data from obj_shipSystemsLarge through `item_data`
                UpgradeShip(other.item_data, other.system_type);

                // Now you can use `system_data` as needed
            }
			}
        }

        // Snap back obj_shipSystems to its original position
        x = start_x;
        y = start_y;

        drag = false; // End the drag operation
    }
}

