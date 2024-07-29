if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
galaxyLayer = layer_get_id("Galaxy");
spaceStationLayer = layer_get_id("SpaceStation");
planet1Layer = layer_get_id("Planet1");
planet2Layer = layer_get_id("Planet2");

// Update camera destination

if (follow_player && instance_exists(follow)) {
    xTo = follow.x;
    yTo = follow.y;

} else if (HasCameraStart()) {
	show_debug_message("CameraStartCoordinates")
        xTo = GetCameraStart()[0];
        yTo = GetCameraStart()[1];
    } 
	else if (instance_exists(follow)){
    // Initial position remains the same until follow_player is true
     xTo = follow.x;
    yTo = follow.y;
}
	else {
    // Initial position remains the same until follow_player is true
    xTo = room_width / 2;
    yTo = room_height / 2;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

// Adjust clamping to account for new camera view size
x = clamp(x, view_w_half / 2, room_width - view_w_half / 2);
y = clamp(y, view_h_half / 2, room_height - view_h_half / 2);

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

// Update camera view size based on the global screen scale
view_w_half = original_view_w * screenScale;
view_h_half = original_view_h * screenScale;
camera_set_view_size(cam, view_w_half, view_h_half);

// Update camera view position
camera_set_view_pos(cam, x - view_w_half / 2, y - view_h_half / 2);

if (galaxyLayer) {
    layer_x(galaxyLayer, x / 1.2);
}
if (planet1Layer) {
    layer_x(planet1Layer, x / 2);
}
if (planet2Layer) {
    layer_x(planet2Layer, x / 3);
}
