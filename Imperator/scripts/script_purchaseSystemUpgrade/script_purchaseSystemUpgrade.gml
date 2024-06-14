
function PurchaseSystem(){

var array_index = argument0; // Entry to be updated
var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        global.primaryWeapons[array_index].isOwned = true;
		show_debug_message(global.primaryWeapons);
        break;
        
    case "secondaryWeapon":
       global.secondaryWeapons[array_index].isOwned = true;
	   show_debug_message(global.secondaryWeapons);
        break;
        
    case "hull":
        global.hulls[array_index].isOwned = true;
		show_debug_message(global.hulls);
        break;
        
    case "engine":
        global.engines[array_index].isOwned = true;
		show_debug_message(global.engines);
        break;
        
    case "sensors":
       global.sensors[array_index].isOwned = true;
	   show_debug_message(global.sensors);
        break;
        
    case "shields":
        global.shields[array_index].isOwned = true;
		show_debug_message(global.shields);
        break;
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}