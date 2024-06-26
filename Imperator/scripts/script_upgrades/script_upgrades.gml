function GetUpgradeInfo(){
    var array_index = argument0; // Entry to be updated
    var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

    var info = "";
    switch (array_type) {
        case "primaryWeapon":
            var upgrade = global.primaryWeapons[array_index];
            show_debug_message(upgrade.damage);
            info = string(upgrade.name) + "\n" +
                   "Damage: " + string(upgrade.damage) + "\n" +
                   "Range: " + string(upgrade.range) + "\n" +
                   "Projectile speed: " + string(upgrade.shotSpeed) + "\n" +
                   "Reload Speed: " + string(upgrade.cooldown) + "\n"; 
            break;

        case "secondaryWeapon":
            var upgrade = global.secondaryWeapons[array_index];
            info =  string(upgrade.name) + "\n" +
                   "Damage: " + string(upgrade.damage) + "\n" +
                   "Range: " + string(upgrade.range) + "\n" +
                   "Projectile Speed: " + string(upgrade.shotSpeed) + "\n" +
                   "Reload Speed: " + string(upgrade.cooldown) + "\n"; 
            break;

        case "hull":
            var upgrade = global.hulls[array_index];
            info =  string(upgrade.name) + "\n" +
                   "Armor: " + string(upgrade.maxHp) + "\n"; 
            break;

        case "engine":
            var upgrade = global.engines[array_index];
            info = string(upgrade.name) + "\n" +
                   "Speed: " + string(upgrade.speed) + "\n" +
                   "Boost: " + string(upgrade.boostSpeed) + "\n" +
                   "Boost Cooldown: " + string(upgrade.cooldown) + "\n"; 
            break;

        case "sensors":
            var upgrade = global.sensors[array_index];
            info =  string(upgrade.name) + "\n" +
                   "Range: " + string(upgrade.range) + "\n" +
                   "Radius: " + string(upgrade.radius) + "\n" +
                   "Sensitivity: " + string(upgrade.sensitivity) + "\n";
            break;

        case "shields":
            var upgrade = global.shields[array_index];
            info = string(upgrade.name) + "\n" +
                   "Shield Strength: " + string(upgrade.shieldStaticMax) + "\n" +
                   "Pulse Strength: " + string(upgrade.shieldActive) + "\n" +
                   "Pulse Delay: " + string(upgrade.delay) + "\n" +
                   "Pulse Cooldown: " + string(upgrade.cooldown) + "\n" +
                   "Uses: " + string(upgrade.uses) + "\n";
            break;

        default:
            show_debug_message("Unknown array type: " + string(array_type));
            return "Unknown array type: " + string(array_type);
    }

    return info;
}


function GetUpgrade(){

var array_index = argument0; // Entry to be updated
var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        return global.primaryWeapons[array_index];
        
    case "secondaryWeapon":
      return global.secondaryWeapons[array_index];
    case "hull":
      return  global.hulls[array_index];
        
    case "engine":
     return   global.engines[array_index];
        
    case "sensors":
      return global.sensors[array_index];
        
    case "shields":
      return  global.shields[array_index];
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}
function GetShipSprite(){

/// @description Add an item to the inventory
/// @param item_obj_id The object ID of the item to add
/// @param quantity The quantity of the item to add
var array_type = argument0; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        return global.selectedShip.primaryWeapon.systemSprite;
     
        
    case "secondaryWeapon":
     return   global.selectedShip.secondaryWeapon.systemSprite;

        
    case "hull":
      return  global.selectedShip.hull.systemSprite;

        
    case "engine":
	
     return   global.selectedShip.engine.systemSprite;
		show_debug_message(global.selectedShip);

        
    case "sensors":
      return  global.selectedShip.sensors.systemSprite;
    
        
    case "shields":
       return global.selectedShip.shields.systemSprite;
  
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}


function GetShipUpgrade(){

/// @description Add an item to the inventory
/// @param item_obj_id The object ID of the item to add
/// @param quantity The quantity of the item to add
var array_type = argument0; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
        return global.selectedShip.primaryWeapon.name;
     
        
    case "secondaryWeapon":
     return   global.selectedShip.secondaryWeapon.name;

        
    case "hull":
      return  global.selectedShip.hull.name;

        
    case "engine":
	
     return   global.selectedShip.engine.name;
		show_debug_message(global.selectedShip);

        
    case "sensors":
      return  global.selectedShip.sensors.name;
    
        
    case "shields":
       return global.selectedShip.shields.name;
  
  
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}
