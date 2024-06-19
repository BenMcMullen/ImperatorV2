
function InitShop() {

function PurchaseUpgrade(){

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




function CanPurchase(){
show_debug_message("get here at least");
var array_index = argument0; // Entry to be updated
var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
	show_debug_message("get here at least");
       if (global.primaryWeapons[array_index].cost > global.totalPoints){
        return true;
	   }
	   break
    case "secondaryWeapon":
	show_debug_message("get here at least");
         if (global.secondaryWeapons[array_index].cost > global.totalPoints){
        return true;
	   }
         break
    case "hull":
	show_debug_message("get here at least");
       if (global.hulls[array_index].cost > global.totalPoints){
        return true;
	   }
         break
    case "engine":
       if (global.engines[array_index].cost > global.totalPoints){
        return true;
	   }
         break
    case "sensors":
        if (global.sensors[array_index].cost > global.totalPoints){
        return true;
	   }
         break
    case "shields":
          if (global.shields[array_index].cost > global.totalPoints){
        return true;
	   }
   break
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}

function PurchasePrice(){

var array_index = argument0; // Entry to be updated
var array_type = argument1; // String representing the array type (e.g., "primaryWeapons")

switch (array_type) {
    case "primaryWeapon":
	
		return global.primaryWeapons[array_index].cost
	
    case "secondaryWeapon":
	
		return global.secondaryWeapons[array_index].cost
		
    case "hull":
     	
		return global.hulls[array_index].cost
	
    case "engine":
     	
		return global.engines[array_index].cost
	
    case "sensors":
       	
		return global.sensors[array_index].cost
	
    case "shields":
        	
		return global.shields[array_index].cost
	
        
    default:
        show_debug_message("Unknown array type: " + array_type);
        break;
}
}
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

function PurchaseUpgrade(){

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