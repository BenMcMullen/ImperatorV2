
function UpgradeShip(){

/// @description Add an item to the inventory
/// @param item_obj_id The object ID of the item to add
/// @param quantity The quantity of the item to add

var itemObjId = argument0;
var quantity = argument1;

// Check if the item already exists in the inventory
var itemExists = false;

for (var i = 0; i < array_length(global.shipUpgrades); i++) {
    if (global.shipUpgrades[i].itemObjId == itemObjId) {
        global.shipUpgrades[i].quantity += quantity;
        itemExists = true;
        break;
    }
}

// If the item does not exist, add a new item to the inventory
if (!itemExists && array_length(global.shipUpgrades) < global.maxShipUpgrades) {
    var newItem;
    newItem.itemObjId = itemObjId;
    newItem.quantity = quantity;
    array_push(global.shipUpgrades, newItem);
}

}