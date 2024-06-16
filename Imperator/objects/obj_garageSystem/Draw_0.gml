// obj_garageSystem Draw Event (or wherever you create obj_garageUpgrades)
draw_sprite(systemSprite, 0, x, y);

var start_index = current_group_start;
var end_index = min(start_index + items_per_group - 1, total_items - 1);

var base_x = x; // Adjust as needed
var base_y = y - sprite_height; // Position just above obj_garageSystem

// Calculate the position for obj_garageDisplayBox
var displayBox_x = x; // Centered horizontally with obj_garageSystem
var displayBox_y = base_y - 64; // Position just above obj_garageSystem, adjust as needed

// Create obj_garageDisplayBox instance at calculated position
var displayBox = instance_create_layer(displayBox_x - 130, displayBox_y, "Systems", obj_garageDisplayBox);

// Define spacing between upgrades
var spacing = 64; // Space between each obj_garageUpgrades instance

// Calculate starting position for upgrades inside display box
var upgrade_x = displayBox.x; // Start at the left edge of display box
var upgrade_y = displayBox.y; // Start at the top edge of display box

for (var i = 0; i < total_items; i++) {
    var system = target[i];
    if (system.isOwned) {
        // Create obj_garageUpgrades instance at calculated position
        var instance = instance_create_layer(upgrade_x, upgrade_y, "Systems", obj_garageUpgrades);
        instance.sprite_index = system.garageSprite; // Assuming items_array contains sprite_index information

        // Set properties or data for obj_garageUpgrades instance based on items_array[i]
        instance.item_data = system;
        instance.system_type = systemType;
        instance.systemSprite = systemSprite;
        instance.creator_id = id; // Store the ID of the creating obj_garageSystem instance

        // Move to the next position for the next upgrade instance
        upgrade_x += instance.sprite_width + spacing; // Move horizontally to the right
        if (upgrade_x > displayBox_x + displayBox.sprite_width - instance.sprite_width) {
            // If the next upgrade would exceed the display box width, move to the next row
            upgrade_x = displayBox.x; // Reset to the left edge
            upgrade_y += instance.sprite_height + spacing; // Move vertically down
        }
    }
}