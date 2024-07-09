// Player input
if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}

var ship = global.selectedShip;

if (moving_to_target) {
    // Move towards the target position
    var moveSpeed = 5; // Adjust the speed as needed

    // Calculate the distance to the target
    var dx = target_x - x;
    var dy = target_y - y;
    var distance = point_distance(x, y, target_x, target_y);

    if (distance > moveSpeed) {
        // Move towards the target position
        x += moveSpeed * (dx / distance);
        y += moveSpeed * (dy / distance);
    } else {
        // Snap to the target position and stop moving
        x = target_x;
        y = target_y;
        moving_to_target = false;
        hasControl = true; // Re-enable player control
    }
} else {
    if (hasControl) {
        keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
        keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
        keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
        keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
        keyBoosting = keyboard_check(vk_space);
    } else {
        keyLeft = 0;
        keyRight = 0;
        keyUp = 0;
        keyDown = 0;
        keyBoosting = 0;
    }

    // Calculate movement direction based on key input
    var moveX = keyRight - keyLeft;
    var moveY = keyDown - keyUp;
    var moveSpeed = ship.engine.speed;

    if (keyBoosting) {
        // Increase movement speed when boosting
        sprite_index = ship.sprites.spriteBoosting;
        moveSpeed *= ship.engine.boostSpeed; // You can adjust the multiplier as needed
    }

    // Calculate horizontal and vertical speeds and movespeed
    hsp = moveX * moveSpeed;
    vsp = moveY * moveSpeed;

    // Create a target angle variable if not already created
    if (!variable_instance_exists(id, "targetAngle")) {
        targetAngle = image_angle;
    }

    // Calculate the target angle of movement
    if (moveX != 0 || moveY != 0) {
        targetAngle = point_direction(0, 0, hsp, vsp) - 90; // Subtract 90 because we pivoted all the sprites.
    }

    // Smoothly rotate towards the target angle
    var turnSpeed = 10; // Adjust this value to control turning speed
    image_angle = AngleLerp(image_angle, targetAngle, turnSpeed * 0.01);

    // Horizontal movement
    if (hsp != 0) {
        if (!place_meeting(x + hsp, y, obj_wall)) {
            x += hsp;
        } else {
            hsp = 0;
        }
    }

    // Vertical movement
    if (vsp != 0) {
        if (!place_meeting(x, y + vsp, obj_wall)) {
            y += vsp;
        } else {
            vsp = 0;
        }
    }
	if (global.isCloaked) {
		sprite_index = ship.sprites.spriteCloaked;
		if (mouse_check_button_pressed(mb_any) || keyboard_check_pressed(vk_space))	{
	global.isCloaked = false;
	}
	}
	else {
    if (keyBoosting) {
        sprite_index = ship.sprites.spriteBoosting;
    } else if (moveX != 0 || moveY != 0) {
        sprite_index = ship.sprites.spriteMoving;
        image_speed = 1;
        if (moveX != 0) image_xscale = sign(moveX);
    } else {
        sprite_index = ship.sprites.spriteStatic;
        image_speed = 0;
    }
	}
    image_xscale = 1;
}

