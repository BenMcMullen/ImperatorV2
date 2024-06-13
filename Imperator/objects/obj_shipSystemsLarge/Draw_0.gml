draw_self();// obj_shipSystemsLarge Draw Event
var start_index = current_group_start;
var end_index = min(start_index + items_per_group - 1, total_items - 1);

// Calculate base position above obj_shipSystemsLarge
var base_x = x; // Adjust as needed
var base_y = y - sprite_height; // Position just above obj_shipSystemsLarge

var spacing = 32; // Space between each obj_shipSystems instance

for (var i = start_index; i <= end_index; i++) {
	var system = global.engines[i];
	
    var instance_x = base_x + (i - start_index) * (sprite_width + spacing);
    var instance_y = base_y;
    
    // Create obj_shipSystems instance at calculated position
    var instance = instance_create_layer(instance_x, instance_y, layer, obj_shipSystems);
        instance.sprite_index = global.engines[i].garageSprite; // Assuming items_array contains sprite_index information

    // Set properties or data for obj_shipSystems instance based on items_array[i]
    instance.item_data = system;
    
    // Optionally set sprite or other properties based on items_array[i]
    // instance.sprite_index = ...;
    
    // Increment x position for next instance in the group
    // Example: instance_x += ...;
}
