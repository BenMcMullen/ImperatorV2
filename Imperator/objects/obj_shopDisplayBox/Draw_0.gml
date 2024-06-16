/// Draw Event of obj_shopDisplayBox
draw_self();

/*var num_items = 3;
var item_width = 64; // Adjust based on your sprite size
var item_height = 64; // Adjust based on your sprite size

// Calculate the total width and height needed for items including spacing
var total_width = num_columns * item_width + (num_columns - 1) * item_spacing;
var total_height = ceil(num_items / num_columns) * (item_height + descriptor_height) + 
(ceil(num_items / num_columns) - 1) * item_spacing;

// Calculate starting position to center the grid in obj_shopDisplayBox
var start_x = x + margin_x + (sprite_width - total_width) / 2;
var start_y = y + margin_y + (sprite_height - total_height) / 2;

// Iterate through instances of obj_shopUpgrade
var count = 0;
for (var i = 0; i < num_items; i++) {
    var upgrade_instance = instance_find(obj_shopUpgrade, i);

    if (upgrade_instance != noone) {
        var col = count mod num_columns;
        var row = floor(count / num_columns);
        
        var item_x = start_x + col * (item_width + item_spacing);
        var item_y = start_y + row * (item_height + descriptor_height + item_spacing);
        
        // Set position for obj_shopUpgrade instance
        upgrade_instance.x = item_x;
        upgrade_instance.y = item_y;
        
        // Update count
        count++;
    }
}
