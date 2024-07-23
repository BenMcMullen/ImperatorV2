// Get the camera object
cam = view_camera[0];

// Get the width and height of the camera view
w = camera_get_view_width(cam);
h = camera_get_view_height(cam);
h_half = h /2;
enum TRANS_MODE
{
	OFF,NEXT,GOTO,RESTART,INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
tSpeed = 1.1;
centerX = window_get_width() / 2;
centerY = window_get_height() / 2;
depth = -1200;