// Mouse Left Pressed event in obj_shopSystem

var currentTime = current_time / 1000;

if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time

show_debug_message(total_items);
// Clear previously displayed results (if any)
global.shoppingSystem = systemType;;

// Create a display box object in the middle of the room
var displayBox = instance_create_layer(room_width / 2, room_height / 2, "Items", obj_shopDisplayBox);

// Define grid layout parameters
var num_columns = 4; // Number of columns
var item_spacing = 32; // Spacing between items
var margin_x = 32; // Horizontal margin
var margin_y = 32; // Vertical margin
var descriptor_height = 24; // Height of descriptor space below each item

// Iterate through currentArray (replace with your actual array variable)
var yOffset = 0;
var count = 0; // Counter for the number of created instances

for (var i = 0; i < total_items; i++) {
    var currentItem = target[i];
     
    // Check if item is not owned (assuming isOwned is a boolean attribute)
    
        // Create an instance of obj_shopUpgrade in displayBox
        var shopItemInstance = instance_create_layer(displayBox.x, displayBox.y + yOffset, "Items", obj_shopUpgrade);
        
        // Set sprite index and properties for obj_shopUpgrade instance
		if (currentItem.isOwned) {
			 shopItemInstance.sprite_index = spr_ownedSystemUpgrade;
		}
		else {
        shopItemInstance.sprite_index = currentItem.garageSprite; // Assuming items_array contains sprite_index information
		}
		shopItemInstance.array_index = i; // Store the array index
        shopItemInstance.system_type = systemType; // Set system type
        
        // Calculate position for obj_shopUpgrade instance within displayBox
        var col = count mod num_columns;
        var row = floor(count / num_columns);
        var item_x = displayBox.x + margin_x + col * (shopItemInstance.sprite_width + item_spacing);
        var item_y = displayBox.y + margin_y + row * (shopItemInstance.sprite_height +
		descriptor_height + item_spacing);
        
        // Set position for obj_shopUpgrade instance
        shopItemInstance.x = item_x;
        shopItemInstance.y = item_y;
        
        // Increment yOffset for next item (if displaying vertically)
        yOffset += shopItemInstance.sprite_height + descriptor_height + item_spacing;
        
        // Increment count for the number of created instances
        count++;
   
}
}