cam = view_camera[0];
follow = obj_player;
view_wview[0] = 5000;  // Set the view width
view_hview[0] = 3333;  // Set the view height
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;

shakeLength = 60;
shakeMagnitude = 6;
shakeRemain = 6;
buff = 32;
