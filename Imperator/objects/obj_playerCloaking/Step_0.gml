if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Handle cloaking state
if (global.playerCloaked) {
    global.playerCloakingDuration -= 1; // Decrease the cloaking duration timer

    // Check if the player performs any actions that would disable cloaking

	if (mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_space))	{
	global.playerCloaked = false;
	global.playerCloakingCooldown = 1200 / global.selectedShip.passives.veteranCrew;
; // Set the cooldown duration
	}

    // Check if cloaking duration has ended
    if (global.playerCloakingDuration <= 0) {
        global.playerCloaked = false;
        global.playerCloakingCooldown = 1200 / global.selectedShip.passives.veteranCrew;
; // Set the cooldown duration
    }
}

// Handle cooldown period
if (global.playerCloakingCooldown > 0) {
    global.playerCloakingCooldown -= 1; // Decrease the cooldown timer

    // Once cooldown is over, player can cloak again
    if (global.playerCloakingCooldown <= 0) {
        global.playerCanCloak = true;
    }
}

// Function to check if the player performed any actions that would disable cloaking
function player_performed_action_during_cloak() {
    // Define actions that should disable cloaking, e.g., shooting, using abilities, etc.
    // Return true if any of these actions are detected
    if (input_shoot_button || input_use_ability_button) {
        return true;
    }
    return false;
}




