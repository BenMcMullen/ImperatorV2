
var confirmationWidth = room_width/2;
var confirmationHeight = room_height/2;
var currentTime = current_time / 1000;


var overlay_instance = instance_find(obj_overlayConfirmation, 0);
if (!instance_exists(overlay_instance)) {
if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
    lastClickTime = currentTime; // Update the last click time

	if (!selectedHoloPlanet.unlocked) {
			show_debug_message("Locked Planet")
			var holoMessage = instance_create_layer(confirmationWidth, confirmationHeight, "HoloItems", obj_holoMessage);
            holoMessage.messageText = (selectedHoloPlanet.missionName + " is under enemy control");
			holoMessage.goBridge = false;
			}
	else if (currentPlanet.missionName != selectedHoloPlanet.missionName) {
			show_debug_message("New Planet")
			var holoConfirmation = instance_create_layer(confirmationWidth, confirmationHeight, "HoloItems", obj_holoConfirmationScreen);
            holoConfirmation.planetName = selectedHoloPlanet.missionName;
			holoConfirmation.messageText = ("FTL travel to " + selectedHoloPlanet.missionName + " ?");
			
			 var yesButton = instance_create_layer(confirmationWidth + 130, confirmationHeight + 55, "HoloItems", obj_holoYesButton); // Adjust positions as needed
            yesButton.messageText = "Calibrating black matter matrix for FTL travel";
            yesButton.planetIndex = holoPlanetIndex;

            var noButton = instance_create_layer(confirmationWidth - 180, confirmationHeight  + 55, "HoloItems", obj_holoNoButton); // Adjust positions as needed
			} 
			
	else if (currentPlanet.missionName == selectedHoloPlanet.missionName) {
		show_debug_message("Same Planet")
			var holoMessage = instance_create_layer(confirmationWidth, confirmationHeight, "HoloItems", obj_holoMessage);
			holoMessage.messageText = ("You are already here.");
			holoMessage.goBridge = false;
			}
			
}
}