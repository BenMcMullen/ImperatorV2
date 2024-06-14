// obj_shipSystems Left Mouse Button Release Event
if (mouse_check_button_released(mb_left)) {
    if (drag) {
        // Check if obj_shipSystems is dropped inside obj_shipSystemsLarge
        var target = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_shipSystemsLarge, true, true);
        
        if (target != noone) {
            // Object is dropped inside the large box
            with (target) {
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
                sprite_index = other.sprite_index; // Change large box sprite to the small box sprite
                image_index = 0; // Optionally reset the image_index if using animated sprites
                
                // Access `system` data from obj_shipSystemsLarge through `item_data`
				UpgradeShip(other.item_data, other.system_type)
               
                // Now you can use `system_data` as needed
            }
        }
        
        // Snap back obj_shipSystems to its original position
        x = start_x;
        y = start_y;
        
        drag = false; // End the drag operation
    }
}
