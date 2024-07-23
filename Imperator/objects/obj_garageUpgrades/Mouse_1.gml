/// @description Insert description here
// You can write your code in this editor
var overlay_instance = instance_find(obj_overlayConfirmation, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
var array_index = other.array_index;
var systemType = other.systemType;

if (other.unlocked) {
var infoClick = instance_create_layer(x/2, y/2, "Items", obj_garageUpgradeInfo);
infoClick.array_index = array_index;
infoClick.systemType = systemType;
}
}