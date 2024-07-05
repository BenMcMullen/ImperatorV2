// Method to attack the player
function attack_player() {
    if (distance_to_object(player) < attack_range) {
        player.health -= 1;
        show_debug_message("Attacking player!");
    }
}