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

