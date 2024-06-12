/// @description Insert description here
// You can write your code in this editor
if (global.selectedShip.hull.hp <= 0)
{
	global.kills =- global.killsThisRoom;
	global.selectedShip.hull.hp = global.selectedShip.hull.maxHp;
	global.selectedShip.shields.shieldStatic = global.selectedShip.shields.shieldStaticMax;
	with (obj_playerWeapons) instance_destroy();
	instance_change(obj_explosionPlayer,true);
}
