/// WrapText
/// WrapText(string, max_width)
/// Wraps the given string into lines that fit within max_width.
/// Returns an array of strings (lines).
// Function to update the displayed items
function UpdateDisplay() {
   // Clear previously displayed items
    with (obj_garageUpgrades) {
        instance_destroy();
    }

    // Display new set of items
    for (var i = 0; i < itemsPerPage; i++) {
        var item_index = current_index + i;
        if (item_index < array_length(target)) {
            var system = target[item_index];
            var instance_x = x - 96 + (i * 64); // Adjust x position within the box
            var instance_y = y - 32; // Adjust y position within the box

            // Create obj_garageUpgrades instance
            var upgrade_instance = instance_create_layer(instance_x, instance_y, "Items", obj_garageUpgrades);
            upgrade_instance.sprite_index = system.garageSprite;
            upgrade_instance.item_data = system;
        }
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
