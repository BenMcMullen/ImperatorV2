
function GameOver() {

var allDestroyed = true;

// Iterate through the playerShips array
var shipCount = array_length(global.playerShips);
for (var i = 0; i < shipCount; i++) {
    var ship = global.playerShips[i];
    
    // Check if the ship is owned and not destroyed
    if (ship.isOwned && !ship.destroyed) {
        allDestroyed = false;
        break;  // Exit loop early since we found a ship that is owned but not destroyed
    }
}

return allDestroyed;
} 