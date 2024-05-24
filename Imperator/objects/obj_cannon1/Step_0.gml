// Set the position of the child object to the player object's position
x = obj_player.x;
y = obj_player.y;

// Calculate the direction angle between the player and the mouse position
var target_angle = point_direction(x, y, mouse_x, mouse_y);

// Normalize the angle to the range [0, 360)
target_angle = target_angle mod 360;

// Determine the player's current facing direction using image_xscale
var facing_direction = obj_player.image_xscale;

// Define the range for allowed aiming relative to the facing direction
var min_angle, max_angle;

if (facing_direction == 1) {
    // Player facing right
    min_angle = -110;
    max_angle = 110;
} else if (facing_direction == -1) {
    // Player facing left
    min_angle = 70;
    max_angle = 290;
}

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

plasmadelay = 5;
	with (instance_create_layer(x,y,"Plasma",obj_plasma))
	{
		speed = 25;
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction;
	}
	
}
if (mouse_check_button(mb_right)) && (missiledelay < 0) 
{
missiledelay = 45;
	with (instance_create_layer(x,y+15,"Missile",obj_missile1))
	{
		speed = 10;
		direction = other.image_angle + random_range(0.5,0.5);
		image_angle = direction;
	}
	
}

