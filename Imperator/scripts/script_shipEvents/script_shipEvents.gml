// Function to check if the player performed any actions that would disable cloaking
function player_performed_action_during_cloak() {
    // Define actions that should disable cloaking, e.g., shooting, using abilities, etc.
    // Return true if any of these actions are detected
    if (input_shoot_button || input_use_ability_button) {
        return true;
    }
    return false;
}

function GetCurrentHpPercent(max_hp, current_hp) {
    if (max_hp == 0) {
        return 0; // Prevent division by zero
    }
    return (current_hp / max_hp) * 100;
}