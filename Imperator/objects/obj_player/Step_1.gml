/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
{
	global.kills =- global.killsThisRoom;
	with (obj_playerPlasmaMissiles) instance_destroy();
	instance_change(obj_explosionPlayer,true);
	
}
