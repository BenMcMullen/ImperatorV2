/// @description Insert description here
// You can write your code in this editor
var array_index = other.array_index;
var systemType = other.systemType;

if (other.unlocked) {
var infoClick = instance_create_layer(x/2, y/2, "Items", obj_shopUpgradeInfo);
infoClick.array_index = array_index;
infoClick.systemType = systemType;
}