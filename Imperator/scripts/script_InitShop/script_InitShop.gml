
function InitShop() {
	
function ShopItems(_id, _purchased, _price, _sprite, _x, _y,_itemName, _system) {
    return {
		id: _id,
		purchased: _purchased,
        price: _price,
        sprite: _sprite,
        x: _x,
        y: _y,
		itemName: _itemName,
		system: _system
    };
}

// Initialize the global array of shop items
global.shopItems = [];

global.shopItems[0] = ShopItems(1, false, 100, spr_pulseShield, 100, 200, "Pulse Shield", "shields");
global.shopItems[1] = ShopItems(2, false, 200, spr_pulseShield, 400, 200, "Turbo Charger", "engine");
global.shopItems[2] = ShopItems(3, false, 700, spr_pulseShield, 700, 200, "Rail Gun", "primaryWeapon");
global.shopItems[3] = ShopItems(4, false, 700, spr_pulseShield, 1000, 200, "Recoil Armour", "hp");
global.shopItems[4] = ShopItems(5, false, 1200, spr_pulseShield, 100, 500, "Enhanced Sensors", "sensors");
global.shopItems[5] = ShopItems(6, true, 2000, spr_pulseShield, 400, 500, "Secondary Gunner", "secondaryWeapon");
// Add more items as needed

}