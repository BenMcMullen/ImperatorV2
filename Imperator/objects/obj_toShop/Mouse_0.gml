var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
//left down
sprite_index = spr_btnShop;
image_index = 2;
alarm[0] = room_speed * .1;
image_speed = 0;
}