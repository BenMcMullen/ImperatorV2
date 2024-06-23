/// Mouse Left Pressed event in obj_shopSystem

var currentTime = current_time / 1000;
var overlay_instance = instance_find(obj_overlayConfirmation, 0);
if (!instance_exists(overlay_instance)) {
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time
if (!displaying) {
		displaying = true;
        // Create a display box object in the middle of the room
        var displayBox = instance_create_layer(room_width / 2.75, room_height / 1.25, "Briefs", obj_briefDisplayBox);

        // Calculate the starting position at the top middle of obj_shopDisplayBox. the +64 helps to complensate for sprite size
        var start_x = displayBox.x - (columns / 2 * spacing_x) + 64;
        var start_y = displayBox.y - 150 // Adjust as needed for vertical position

        // Iterate through currentArray (replace with your actual array variable)
        var yOffset = 0;
        var count = 0; // Counter for the number of created instances
        var current_column = 0;
        var current_row = 0;
		var briefs = GetMissionBriefs();
        for (var i = 0; i < array_length(briefs); i++) {
            var brief = briefs[i];
            var instance_x = start_x + current_column * spacing_x;
            var instance_y = start_y + current_row * spacing_y;

            var briefInstance = instance_create_layer(instance_x, instance_y + yOffset, "Briefs", obj_brief);
            show_debug_message(brief.operationName)
			
			//MAKE SPECIAL MISSIONS RANDOM FOR EACH RUN?MAKE SDIFFERENT RUNS INTERESTING!!!!!
            briefInstance.brief = brief;
			briefInstance.levelIndex = i;
            briefInstance.operationName = brief.operationName; 
            briefInstance.sprite = brief.sprite;
            briefInstance.missionType = brief.levelType;
            
		    // Create obj_shopUpgradeDescription instance for the current shop item
            var descriptionText = instance_create_layer(instance_x + 32, instance_y + yOffset + 64, "Briefs", obj_briefLabel);
            descriptionText.operationName = brief.operationName; // Set the description text
		
            // Increment count for the number of created instances
            current_column++;
            if (current_column >= columns) {
                current_column = 0; // Reset the column count
                current_row++; // Move to the next row
            }
        }
    }
	else {
		displaying = false;
		with (obj_brief) {
		instance_destroy(obj_brief)	
		}
		with (obj_briefDisplayBox) {
		instance_destroy(obj_briefDisplayBox)	
		}
	}
}
}
