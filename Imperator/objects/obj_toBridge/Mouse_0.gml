var overlay_instance = instance_find(obj_overlay, 0);
if (!instance_exists(overlay_instance)) {
sprite_index = spr_btnHangar;
image_index = 2;
alarm[0] = room_speed * .1;
image_speed = 0;
global.garageUpgradingSystem = "";
}