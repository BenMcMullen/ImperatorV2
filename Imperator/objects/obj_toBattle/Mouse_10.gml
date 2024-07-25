var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
//mouse enter
sprite_index = spr_btnBattle;
image_index = 1;
image_speed = 0

if (currentLevel.completed|| AllSystemsInstalled() == false) {
sprite_index = spr_btnBattle;
image_index = 3;
image_speed = 0;
}
}