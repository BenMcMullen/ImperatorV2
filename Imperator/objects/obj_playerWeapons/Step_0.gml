// Set the position of the child object to the player object's position
x = obj_player.x;
y = obj_player.y;

// Determine the player's current facing direction


if (obj_player.key_left && obj_player.key_right) {
    if (obj_player.key_up) {
        facing_direction = 315; // Up-Right
    } else if (obj_player.key_down) {
        facing_direction = 45; // Down-Right
    } else {
        facing_direction = 0; // Right
    }
} else if (obj_player.key_left) {
    if (obj_player.key_up) {
        facing_direction = 225; // Up-Left
    } else if (obj_player.key_down) {
        facing_direction = 135; // Down-Left
    } else {
        facing_direction = 180; // Left
    }
} else if (obj_player.key_right) {
    if (obj_player.key_up) {
        facing_direction = 315; // Up-Right
    } else if (obj_player.key_down) {
        facing_direction = 45; // Down-Right
    } else {
        facing_direction = 0; // Right
    }
} else if (obj_player.key_up) {
    facing_direction = 270; // Up
} else if (obj_player.key_down) {
    facing_direction = 90; // Down
}
	
// Define the range for allowed aiming relative to the facing direction

switch (facing_direction) {
     case 0: // Right
        min_angle = -110;
        max_angle = 110;
        break;
	 case 45: // Down-Right
        min_angle = -155;
        max_angle = 65;
        break;
	 case 90: // Down
        min_angle = -200;
        max_angle = 20;
        break;	
	 case 135: // Down-Left
        min_angle = -245;
        max_angle = -25;
        break;	
	 case 180: // Left
        min_angle = 70;
        max_angle = 290;
        break;
	 case 225: // Up-Left
        min_angle = 25;
        max_angle = 245;
        break;	
    case 270: // Up
        min_angle = -20;
        max_angle = 200;
        break;
    case 315: // Up-Right
        min_angle = -65;
        max_angle = 155;
        break;
}

// Calculate the direction angle between the player and the mouse position
var target_angle = point_direction(x, y, mouse_x, mouse_y);

// Normalize the angle to the range [0, 360)
target_angle = target_angle mod 360;

// Normalize the min and max angles to the range [0, 360)
min_angle = (min_angle + 360) mod 360;
max_angle = (max_angle + 360) mod 360;

// Check if target_angle is within the allowed range
if (min_angle <= max_angle) {
    // Standard case
    if (target_angle < min_angle || target_angle > max_angle) {
        if (abs(target_angle - min_angle) < abs(target_angle - max_angle)) {
            target_angle = min_angle;
        } else {
            target_angle = max_angle;
        }
    }
} else {
    // Overlapping 0 degrees case
    if (target_angle > max_angle && target_angle < min_angle) {
        if (abs(target_angle - min_angle) < abs(target_angle - max_angle)) {
            target_angle = min_angle;
        } else {
            target_angle = max_angle;
        }
    }
}

// Set the image_angle of the child object to the clamped target_angle
image_angle = target_angle;

plasmadelay -= 1;
missiledelay -= 1;











if (mouse_check_button(mb_left)) && (plasmadelay < 0) 
{
	if (cooldown_timer > 0) {
    cooldown_timer--;
    if (cooldown_timer == 0) {
        // Reset the shot count after the cooldown period
        shots_fired = 0;
    }
}

if (shots_fired < max_shots && cooldown_timer == 0) {
        plasmadelay = 5;
        audio_play_sound(snd_plasma, 10, false);
        with (instance_create_layer(x, y, "Plasma", obj_plasma)) {
            speed = 25;
            direction = other.image_angle + random_range(-2, 2);
            image_angle = direction;
        }
        shots_fired++;
        if (shots_fired >= max_shots) {
            cooldown_timer = cooldown_duration;
        }
    }

}

if ((mouse_check_button(mb_right)) && global.canPlayerFireMissiles) && (missiledelay < 0) 
{
    missiledelay = 45;
    audio_play_sound(snd_missile,10,false);
    with (instance_create_layer(x,y+15,"Missile",obj_missile1))
    {
        speed = 10;
        direction = other.image_angle + random_range(0.5,0.5);
        image_angle = direction;
    }
}
