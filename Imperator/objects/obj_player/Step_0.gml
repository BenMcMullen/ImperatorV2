// Player input
if (!global.music_playing) {
    if (global.current_music != -1) {
        audio_stop_sound(global.current_music);
    }
    global.current_music = audio_play_sound(snd_level1, 1, true);
    global.music_playing = true;
}

if (hasControl) {
    key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
    key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
    key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
    key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	key_boosting = keyboard_check(vk_space);
} else {
    key_left = 0;
    key_right = 0;
    key_up = 0;
    key_down = 0;
	key_boosting = 0;
}

// Calculate movement direction based on key input
var move_x = key_right - key_left;
var move_y = key_down - key_up;
var move_speed = walksp;



if (key_boosting) {
    // Increase movement speed when boosting
    move_speed *= boost_speed; // You can adjust the multiplier as needed
}



// Calculate horizontal and vertical speeds and movespeed
hsp = move_x * move_speed;
vsp = move_y * move_speed;

																						
// Calculate the angle of movement
if (move_x != 0 || move_y != 0) {
    image_angle = point_direction(0, 0, hsp, vsp);
}


// Handle acceleration when space key is held down



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

// Character animations
if (move_x != 0 || move_y != 0) {
    sprite_index = spr_waspMove;
    image_speed = 1;
    if (move_x != 0) image_xscale = sign(move_x);
} else {
    sprite_index = spr_waspStatic;
    image_speed = 0;
}

if (hsp != 0) image_xscale = sign(hsp);
