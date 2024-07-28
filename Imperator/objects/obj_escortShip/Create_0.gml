depth = 1;
level = GetCurrentLevel();
escortLevel = level.levelType;
destroyed = false;

// Find the instance of obj_escortDestination
var destination = instance_find(obj_escortWarp, 0);

// Check if the destination object is found

    // Set the final destination coordinates to its center
    finalDestinationX = destination.x + destination.sprite_width /2;
    finalDestinationY = destination.y; 

// Set the speed and other properties

escortSpeed = escortLevel.escortSpeed; // Set the speed of the escort ship
hp = escortLevel.damageCap;
escortDamage = 0;
numberOfTriggers = 5;
if (global.playerInformation.rank.rank > 4) {
numberOfTriggers ++;	
}
if (GetCurrentLevel().difficulty.difficultyLevel > 3) {
numberOfTriggers ++;	
}

triggerNumber = 1;
triggerDistance = room_height / numberOfTriggers;
