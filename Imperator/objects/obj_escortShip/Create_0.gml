level = GetCurrentLevel();
escortLevel = level.levelType;
destroyed = false;


instance_create_layer(x, 500, "Escort", obj_escortWarp);


// Find the instance of obj_escortDestination
var destination = instance_find(obj_escortWarp, 0);

// Check if the destination object is found

    // Set the final destination coordinates to its center
    finalDestinationX = destination.x + destination.sprite_width /2;
    finalDestinationY = destination.y; 

// Set the speed and other properties
escortSpeed = escortLevel.escortSpeed; // Set the speed of the escort ship
escortHp = escortLevel.damageCap;
escortDamage = 0;