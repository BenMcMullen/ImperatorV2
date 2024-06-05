/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	with (obj_playerWeapons) instance_destroy();
	instance_change(obj_explosionPlayer,true);
	global.kills =- global.killsThisRoom;
}
