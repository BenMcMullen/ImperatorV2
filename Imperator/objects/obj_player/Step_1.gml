/// @description Insert description here
// You can write your code in this editor
if (global.selectedShip.hull.hp <= 0)
{
	global.kills =- global.killsThisRoom;
	with (obj_playerWeapons) instance_destroy();
	instance_change(obj_explosionPlayer,true);
	global.selectedShip.hull.hp = global.selectedShip.hull.maxHp;
}
