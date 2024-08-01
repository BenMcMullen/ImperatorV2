
screenScale = global.selectedShip.passives.fov * 1

cam = view_camera[0];
follow = obj_player;



original_view_w = camera_get_view_width(cam);
original_view_h = camera_get_view_height(cam);


// Set the initial camera view size based on the global screen scale
camera_set_view_size(cam, original_view_w * screenScale, original_view_h * screenScale);

// Update the half-width and half-height variables to reflect the new view size
view_w_half = original_view_w * screenScale;
view_h_half = original_view_h * screenScale;

xTo = xstart;
yTo = ystart;

shakeLength = 60;
shakeMagnitude = 6;
shakeRemain = 6;
buff = 32;


follow_player = false;

// Timer or condition to start following the player
alarm[0] = room_speed * 3; // Follow player after 3 s