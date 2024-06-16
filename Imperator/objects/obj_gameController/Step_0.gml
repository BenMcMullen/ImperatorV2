/// @description Insert description here
// You can write your code in this editor
if (minimap_surface != -1) {
    surface_free(minimap_surface);
}

if (global.contractQuantity <= global.killsThisRoom && global.hasContract == true) {
	
    global.contractCompleted = true;
	//go to hangar after each level
} else {
    global.contractCompleted = false;
}

if (keyboard_check_pressed(vk_left)) {
    obj_garageSystem.current_group_start -= obj_garageSystem.items_per_group;
    if (obj_garageSystem.current_group_start < 0) {
        obj_garageSystem.current_group_start = 0;
    }
}

if (keyboard_check_pressed(vk_right)) {
    obj_garageSystem.current_group_start += obj_garageSystem.items_per_group;
    if (obj_garageSystem.current_group_start >= obj_garageSystem.total_items) {
        obj_garageSystem.current_group_start = max(0, obj_garageSystem.total_items - obj_garageSystem.items_per_group);
    }
}