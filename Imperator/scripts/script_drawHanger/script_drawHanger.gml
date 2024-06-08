
function Drawhangar(){


var xCoordinate = argument0;
var yCoordinate = argument1;

for (var i = 0; i < array_length(global.shipUpgrades); i++) {
    var item = global.shipUpgrades[i];
    var item_obj = instance_create_depth(0, 0, -1000, item.item_obj_id); // Temporary instance to get item properties
    draw_text(x, y + i * 32, item_obj.item_name + ": " + string(item.quantity));
    instance_destroy(item_obj); // Destroy the temporary instance
}

}