var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
var level = other.brief;
var confirmationWidth = room_width / 2;
var confirmationHeight = room_height / 2;
var currentTime = current_time / 1000;
var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
    if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; 

        if (!level.completed) {
            var missionConfirmation = instance_create_layer(confirmationWidth, confirmationHeight, "Briefs", obj_briefConfirmationScreen);
            missionConfirmation.missionName = level.operationName;

            messageText = "Are you sure you want to select " + level.operationName; // Success message
            missionConfirmation.operationName = level.operationName;

            
            var yesButton = instance_create_layer(confirmationWidth + 130, confirmationHeight + 55, "Briefs", obj_briefYesButton); // Adjust positions as needed
            yesButton.messageText = "You have selected " + level.operationName + ". good luck " + GetRankById(global.playerInformation.rank.rank);
            yesButton.levelIndex = other.levelIndex;

            var noButton = instance_create_layer(confirmationWidth - 180, confirmationHeight  + 55, "Briefs", obj_briefNoButton); // Adjust positions as needed
        } else {
			var briefsMessage = instance_create_layer(confirmationWidth, confirmationWidth, "Briefs", obj_briefMessage);
			messageText = "You have already completed " + level.operationName + "!";
			briefsMessage.messageText = messageText;
			briefsMessage.goHanger = false;
         
        }
		with (obj_imperatorBubble) {
		instance_destroy(obj_imperatorBubble);	
		}
    }
}
}
