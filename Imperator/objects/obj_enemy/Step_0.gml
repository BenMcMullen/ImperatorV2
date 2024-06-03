/// obj_enemy Collision Event with obj_mapEdge
if (place_meeting(x, y, obj_mapEdge)) {
    var collision_instance = instance_place(x, y, obj_mapEdge);
    
    // Reverse the movement direction
    hsp = -hsp;
    vsp = -vsp;
    
    // Move the enemy slightly back from the collision point to prevent sticking
    x -= lengthdir_x(5, collision_instance.image_angle);
    y -= lengthdir_y(5, collision_instance.image_angle);
    
    // Add or subtract a random number between 0 and 4 to vsp and hsp
    vsp += random_range(-4, 4);
    hsp += random_range(-4, 4);
    
    // Ensure that the combined value of vsp and hsp stays under 20
    var total_speed = abs(vsp) + abs(hsp);
    if (total_speed > 20) {
        var ratio = 20 / total_speed;
        vsp *= ratio;
        hsp *= ratio;
    }
    
    // Adjust the position to stay within the bounds of the map edge
    var distance_to_edge = 5; // Adjust as needed
    x = clamp(x, distance_to_edge, room_width - distance_to_edge);
    y = clamp(y, distance_to_edge, room_height - distance_to_edge);
}

// Other movement and behavior code goes here...

x += hsp;
y += vsp;

if (hsp != 0) image_xscale = sign(hsp) * size;
if (vsp != 0) image_yscale = sign(vsp) * size;


if (instance_exists(obj_player)) {
// Detect the player's position
var player_x = obj_player.x;
var player_y = obj_player.y;

// Calculate direction towards the player
var direction_to_player = point_direction(x, y, player_x, player_y);

// Determine if the player is within range or angle to shoot plasma
var distance_to_player = distance_to_point(player_x, player_y);
var angle_to_player = abs(angle_difference(image_angle, direction_to_player));


plasmadelay -= 1;

if (distance_to_player < shoot_range && angle_to_player < shoot_angle && plasmadelay < 0) {
	plasmadelay = fire_rate;

	if (cooldown_timer > 0) {
    cooldown_timer--;
    if (cooldown_timer == 0) {
        // Reset the shot count after the cooldown period
        shots_fired = 0;
    }
}
		if (shots_fired < max_shots && cooldown_timer == 0) 
		{
			audio_play_sound(snd_plasma, 10, false);
				with (instance_create_layer(x, y, "Enemy", obj_enemyPlasma)) 
				{
					speed = 25;
					direction = direction_to_player + random_range(-2, 2);
					image_angle = direction;
				}
				shots_fired++;
					 if (shots_fired >= max_shots) 
					 {
					cooldown_timer = cooldown_duration;
					 }
    }
}
}

