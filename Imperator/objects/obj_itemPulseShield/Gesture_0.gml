// Check if the player has enough currency (assuming a global variable `player_money`)
if (global.totalCompletedContracts >= price) {
    global.totalCompletedContracts -= price;
    // Add item to player's inventory (this will depend on your inventory system)
	
    show_message("Upgrade purchased!");
} else {
    show_message("Not enough contract points!");
}
