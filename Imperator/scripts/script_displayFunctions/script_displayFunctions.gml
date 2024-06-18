/// WrapText
/// WrapText(string, max_width)
/// Wraps the given string into lines that fit within max_width.
/// Returns an array of strings (lines).
// Function to update the displayed items

function ClearUpgrades(displayBox_id) {
    // Clear previously displayed items
    with (obj_garageUpgrades) {
        if (creator_id == displayBox_id) {
            instance_destroy();
        }
    }
}



function PopulateDisplay(displayBox_id) {
    var displayBox = displayBox_id;

    // Clear previously displayed items
    with (obj_garageUpgrades) {
        if (other.creator_id == displayBox.creator_id) {
            instance_destroy();
        }
    }

    var spacing = 96; // Space between upgrades

    // Calculate starting index for the display based on currentIndex
    var start_index = displayBox.currentIndex;
    if (start_index < 0) {
        start_index = array_length(displayBox.target) + start_index; // Wrap around if index is negative
    }

    // Display new set of items (up to itemsPerPage)
    for (var i = 0; i < displayBox.itemsPerPage; i++) {
        var item_index = (start_index + i) % array_length(displayBox.target);
        var system = displayBox.target[item_index];
		show_debug_message("Populate gets here");
        // Calculate x position for each upgrade
        var upgrade_x = displayBox.x + i * spacing;

        // Calculate y position (adjust as needed)
        var upgrade_y = displayBox.y + 32; // Adjust vertically within the display box

        // Create obj_garageUpgrades instance
        var upgrade_instance = instance_create_layer(upgrade_x, upgrade_y, "Systems", obj_garageUpgrades);
        upgrade_instance.sprite_index = system.garageSprite;
        upgrade_instance.item_data = system;
        upgrade_instance.systemType = displayBox.systemType;
        upgrade_instance.systemSprite = displayBox.systemSprite;
        upgrade_instance.creator_id = displayBox.creator_id; // Set creator_id to identify the display box

        // Optionally, set other properties or execute additional logic here
    }
}




function WrapText(str, max_width) {
    var words = string_split(str, " ");   // Split the string into words
    var lines = [];   // Array to hold the resulting lines
    var current_line = "";   // Current line being constructed

    // Iterate through each word in the array
    for (var i = 0; i < array_length(words); i++) {
        var word = words[i];

        // If adding the current word exceeds max_width, start a new line
        if (string_width(current_line + " " + word) > max_width) {
            // Check if the current line is not empty before adding it to the lines array
            if (current_line != "") {
                lines[array_length(lines)] = current_line;
            }
            
            // Start a new line with the current word
            current_line = word;
        } else {
            // Add the word to the current line with a space if it's not the first word
            if (current_line != "") {
                current_line += " ";
            }
            current_line += word;
        }
    }

    // Add the last line to the lines array if it's not empty
    if (current_line != "") {
        lines[array_length(lines)] = current_line;
    }

    // Return the array of lines
    return lines;
}
