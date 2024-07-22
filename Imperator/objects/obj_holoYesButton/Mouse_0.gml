var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
sprite_index = spr_btnYes;
image_index = 2;
alarm[0] = room_speed * .1;
image_speed = 0;
}

