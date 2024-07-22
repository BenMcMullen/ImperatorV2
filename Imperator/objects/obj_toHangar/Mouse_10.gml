  var pause_overlay = instance_find(obj_overlayPause, 0);
var overlay_instance = instance_find(obj_overlay, 0);
var overlayConfirmation_instance = instance_find(obj_overlayConfirmation, 0);
if (!instance_exists(overlay_instance) && !instance_exists(overlayConfirmation_instance) && !instance_exists(pause_overlay) ) {

sprite_index = spr_btnHangar;
image_index = 1;
image_speed = 0;
}