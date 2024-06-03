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
