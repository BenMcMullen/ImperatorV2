var pause_overlay = instance_find(obj_pauseOverlay, 0); 
if (!instance_exists(pause_overlay)) {
//mouse enter
if ((global.desiredRepairs * 100) > global.playerInformation.points) {
	image_index = 3;
	image_speed = 0
} else {
image_index = 1;
image_speed = 0
}
}