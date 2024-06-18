
function UpgradeShip(){

/// @description Add an item to the inventory
/// @param item_obj_id The object ID of the item to add
/// @param quantity The quantity of the item to add
var entry = argument0; // Entry to be assigned to global.selectedShip
var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        global.selectedShip.primaryWeapon = entry;
        break;
        
    case "secondaryWeapon":
        global.selectedShip.secondaryWeapon = entry;
        break;
        
    case "hull":
        global.selectedShip.hull = entry;
        break;
        
    case "engine":
	
        global.selectedShip.engine = entry;
		show_debug_message(global.selectedShip);
        break;
        
    case "sensors":
        global.selectedShip.sensors = entry;
        break;
        
    case "shields":
        global.selectedShip.shields = entry;
        break;
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}

function UpdateShipSprite(){

/// @description Add an item to the inventory
/// @param item_obj_id The object ID of the item to add
/// @param quantity The quantity of the item to add
var array_type = argument0; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        return global.selectedShip.primaryWeapon.garageSprite;
     
        
    case "secondaryWeapon":
     return   global.selectedShip.secondaryWeapon.garageSprite;

        
    case "hull":
      return  global.selectedShip.hull.garageSprite;

        
    case "engine":
	
     return   global.selectedShip.engine.garageSprite;
		show_debug_message(global.selectedShip);

        
    case "sensors":
      return  global.selectedShip.sensors.garageSprite;
    
        
    case "shields":
       return global.selectedShip.shields.garageSprite;
  
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}