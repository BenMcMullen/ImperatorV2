if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Set the position of the child object to the player object's position

// Determine the player's current facing direction

if (instance_find(obj_player, 0)){
	x = obj_player.x;
y = obj_player.y;
if (obj_player.keyLeft && obj_player.keyRight) {
    if (obj_player.keyUp) {
        facingDirection = 315; // Up-Right
    } else if (obj_player.keyDown) {
        facingDirection = 45; // Down-Right
    } else {
        facingDirection = 0; // Right
    }
} else if (obj_player.keyLeft) {
    if (obj_player.keyUp) {
        facingDirection = 225; // Up-Left
    } else if (obj_player.keyDown) {
        facingDirection = 135; // Down-Left
    } else {
        facingDirection = 180; // Left
    }
} else if (obj_player.keyRight) {
    if (obj_player.keyUp) {
        facingDirection = 315; // Up-Right
    } else if (obj_player.keyDown) {
        facingDirection = 45; // Down-Right
    } else {
        facingDirection = 0; // Right
    }
} else if (obj_player.keyUp) {
    facingDirection = 270; // Up
} else if (obj_player.keyDown) {
    facingDirection = 90; // Down
}
	
// Define the range for allowed aiming relative to the facing direction

switch (facingDirection) {
     case 0: // Right
        minAngle = -110;
        maxAngle = 110;
        break;
	 case 45: // Down-Right
        minAngle = -155;
        maxAngle = 65;
        break;
	 case 90: // Down
        minAngle = -200;
        maxAngle = 20;
        break;	
	 case 135: // Down-Left
        minAngle = -245;
        maxAngle = -25;
        break;	
	 case 180: // Left
        minAngle = 70;
        maxAngle = 290;
        break;
	 case 225: // Up-Left
        minAngle = 25;
        maxAngle = 245;
        break;	
    case 270: // Up
        minAngle = -20;
        maxAngle = 200;
        break;
    case 315: // Up-Right
        minAngle = -65;
        maxAngle = 155;
        break;
}

// Calculate the direction angle between the player and the mouse position
var targetAngle = point_direction(x, y, mouse_x, mouse_y);

// Normalize the angle to the range [0, 360)
targetAngle = targetAngle mod 360;

// Normalize the min and max angles to the range [0, 360)
minAngle = (minAngle + 360) mod 360;
maxAngle = (maxAngle + 360) mod 360;

// Check if targetAngle is within the allowed range
if (minAngle <= maxAngle) {
    // Standard case
    if (targetAngle < minAngle || targetAngle > maxAngle) {
        if (abs(targetAngle - minAngle) < abs(targetAngle - maxAngle)) {
            targetAngle = minAngle;
        } else {
            targetAngle = maxAngle;
        }
    }
} else {
    // Overlapping 0 degrees case
    if (targetAngle > maxAngle && targetAngle < minAngle) {
        if (abs(targetAngle - minAngle) < abs(targetAngle - maxAngle)) {
            targetAngle = minAngle;
        } else {
            targetAngle = maxAngle;
        }
    }
}

// Set the image_angle of the child object to the clamped targetAngle
image_angle = targetAngle;
// Step Event

// Primary Delay Adjustment
if (primaryDelay > 0) {
    primaryDelay -= 1;
}

// Cooldown Timer Adjustment
if (primaryCooldownTimer > 0) {
    primaryCooldownTimer -= 1;
    if (primaryCooldownTimer <= 0) {
        // Reset shots fired after cooldown completes
        primaryShotsFired = 0;
        
    }
}

// Firing Mechanism
if (mouse_check_button(mb_left) && (primaryCooldownTimer <= 0) && (primaryDelay <= 0)) {
    // Fire primary weapon
    primaryDelay = global.selectedShip.primaryWeapon.delay;
    audio_play_sound(global.selectedShip.primaryWeapon.audio, 0, false);
    
    with (instance_create_layer(x, y, "Player", obj_primaryWeapon)) {
        projectileSpeed = global.selectedShip.primaryWeapon.shotSpeed;
        
        var accuracy_min = global.selectedShip.primaryWeapon.accuracy[0] / global.selectedShip.passives.hotShot;
        var accuracy_max = global.selectedShip.primaryWeapon.accuracy[1] / global.selectedShip.passives.hotShot;
    
        direction = other.image_angle + random_range(accuracy_min, accuracy_max);
        image_angle = direction;
    }
    
    primaryShotsFired++;

    if (primaryShotsFired >= primaryCapacity) {
        primaryCooldownTimer = primaryCooldownDuration;
    }
}

if (secondaryDelay > 0) {
    secondaryDelay -= 1;
}


// Cooldown Timer Adjustment
if (secondaryCooldownTimer > 0) {
    secondaryCooldownTimer -= 1;
    if (secondaryCooldownTimer <= 0) {
        // Reset shots fired after cooldown completes
        secondaryShotsFired = 0;
        
    }
}

// Firing Mechanism
if (GetCurrentLevel().levelType.type == "Payload Delivery" && 
mouse_check_button(mb_right) && instance_exists(obj_payloadNuke)) {
	var payloadNuke = instance_find(obj_payloadNuke,0)
	if (payloadNuke.payloadInRange) {
		payloadNuke.launch = true;
	}
} 
else if (mouse_check_button(mb_right) && (secondaryCooldownTimer <= 0) && (secondaryDelay <= 0)) {
    // Fire Secondary weapon
    secondaryDelay = global.selectedShip.secondaryWeapon.delay;
    audio_play_sound(global.selectedShip.secondaryWeapon.audio, 0, false);
    with (instance_create_layer(x, y, "Player", obj_secondaryWeapon)) {
		 projectileSpeed = global.selectedShip.secondaryWeapon.shotSpeed;
        direction = other.image_angle + random_range(global.selectedShip.secondaryWeapon.accuracy[0] * global.selectedShip.passives.hotShot,
            global.selectedShip.secondaryWeapon.accuracy[1] * global.selectedShip.passives.hotShot);
        image_angle = direction;
    }
    secondaryShotsFired++;

    if (secondaryShotsFired >= secondaryCapacity) {
        secondaryCooldownTimer = secondaryCooldownDuration;
      
    }
}
}


