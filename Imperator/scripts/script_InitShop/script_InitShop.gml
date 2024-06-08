
function InitShop() {
	
function ShopItem(_price, _sprite, _x, _y, _globalVar,_itemName) {
    return {
        price: _price,
        sprite: _sprite,
        x: _x,
        y: _y,
        globalVar: _globalVar,
		itemName: _itemName
    };
}

// Initialize the global array of shop items
global.shopItems = [];

global.shopItems[0] = ShopItem(100, spr_pulseShield, 100, 200, "itemPulseShield", "Pulse Shield");
global.shopItems[1] = ShopItem(200, spr_pulseShield, 400, 200, "itemBoostBooster", "Turbo Charger");
global.shopItems[2] = ShopItem(700, spr_pulseShield, 700, 200, "itemRailGun", "Rail Gun");
global.shopItems[3] = ShopItem(700, spr_pulseShield, 1000, 200, "itemRecoilArmour", "Recoil Armour");
global.shopItems[4] = ShopItem(1200, spr_pulseShield, 100, 500, "itemEnhancedSensors", "Enhanced Sensors");
global.shopItems[5] = ShopItem(2000, spr_pulseShield, 400, 500, "itemSecondaryGunner", "Secondary Gunner");
// Add more items as needed

}