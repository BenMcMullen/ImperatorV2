// Set the position of the child object to the player object's position
x = obj_player.x;
y = obj_player.y;

// Determine the player's current facing direction


if (obj_player.key_left && obj_player.key_right) {
    if (obj_player.key_up) {
        facingDirection = 315; // Up-Right
    } else if (obj_player.key_down) {
        facingDirection = 45; // Down-Right
    } else {
        facingDirection = 0; // Right
    }
} else if (obj_player.key_left) {
    if (obj_player.key_up) {
        facingDirection = 225; // Up-Left
    } else if (obj_player.key_down) {
        facingDirection = 135; // Down-Left
    } else {
        facingDirection = 180; // Left
    }
} else if (obj_player.key_right) {
    if (obj_player.key_up) {
        facingDirection = 315; // Up-Right
    } else if (obj_player.key_down) {
        facingDirection = 45; // Down-Right
    } else {
        facingDirection = 0; // Right
    }
} else if (obj_player.key_up) {
    facingDirection = 270; // Up
} else if (obj_player.key_down) {
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
var targetAngle = point_direction(x, y, mouse_x, mouse_y +90);

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

primaryDelay -= 1;
secondaryDelay -= 1;








//EVERYTHING ABOVE IS STANDARDIZED
//EVERYTHING BELOW IS DETERMINED BY KIT


if (mouse_check_button(mb_left)) && (primaryDelay < 0) 

{
	if (cooldownTimer > 0) {
    cooldownTimer--;
    if (cooldownTimer == 0) {
        // Reset the shot count after the cooldown period
        shotsFired = 0;
    }
}

if (shotsFired < capacity && cooldownTimer == 0) {
	
        primaryDelay = 5
        audio_play_sound(global.selectedShip.primaryWeapon.audio, 0, false);
		
		
        with (instance_create_layer(x, y, "Weapons", object)) {
            speed = global.selectedShip.primaryWeapon.shotSpeed;
			//These two numbers set the 2 outside ranges of accuracy for the weapon
            direction = other.image_angle + random_range( global.selectedShip.primaryWeapon.accuracy[0],
			global.selectedShip.primaryWeapon.accuracy[1]);
            image_angle = direction;
        }
        shotsFired++;
        if (shotsFired >= capacity) {
            cooldownTimer = cooldownDuration;
        }
    }

}

if ((mouse_check_button(mb_right)) && global.itemMissiles) && (secondaryDelay < 0) 
{
    secondaryDelay = 45;
    audio_play_sound(snd_missile,10,false);
    with (instance_create_layer(x,y+15,"Missile",obj_missile1))
    {
        speed = 10;
        direction = other.image_angle + random_range(0.5,0.5);
        image_angle = direction;
    }
}