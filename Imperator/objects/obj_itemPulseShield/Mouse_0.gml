// Check if the player has enough currency (assuming a global variable `player_money`)
if (global.totalPoints >= price) {
    global.totalPoints -= price;
    // Add item to player's inventory (this will depend on your inventory system)
	
    show_message("Upgrade purchased!");
} else {
    show_message("Not enough contract points!");
}
