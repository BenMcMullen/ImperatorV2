var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_overlayPause, 0); var pause_overlay = instance_find(obj_overlayPause, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
sprite_index = spr_btnYes;
image_index = 0;
image_speed = 0;
}