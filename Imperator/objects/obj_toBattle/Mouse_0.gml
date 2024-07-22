var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
//left down
sprite_index = spr_btnBattle;
image_index = 2;
image_speed = 0;

if (!currentLevel.completed && AllSystemsInstalled() != false) {
	alarm[0] = room_speed * .1;
}
else {
sprite_index = spr_btnBattle;
image_index = 3;
image_speed = 0;
}
}