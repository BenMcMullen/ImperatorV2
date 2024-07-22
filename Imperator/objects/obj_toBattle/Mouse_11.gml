var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_overlayPause, 0); var pause_overlay = instance_find(obj_overlayPause, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
//mouse leave
sprite_index = spr_btnBattle;
image_index = 0;
image_speed = 0;

if (currentLevel.completed || AllSystemsInstalled() == false) {
sprite_index = spr_btnBattle;
image_index = 3;
image_speed = 0;
}
}