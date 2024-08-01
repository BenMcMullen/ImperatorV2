/// @description Insert description here
// You can write your code in this editor
if (global.selectedShip.hull.hp <= 0)
{
	if (global.currentMusic != -1) {
    audio_stop_sound(global.currentMusic);
    global.currentMusic = -1;
    global.musicPlaying = false;
}

	global.kills =- global.killsThisRoom;
	global.selectedShip.hull.hp = global.selectedShip.hull.maxHp;
	global.selectedShip.shields.shieldStatic = global.selectedShip.shields.shieldActiveConsume;
	instance_destroy(obj_playerShields);
	instance_change(obj_playerExplosion,true);
	instance_destroy(obj_playerEngines);
	instance_destroy(obj_playerWeapons);
	instance_destroy(obj_playerCloaking);
	
	
}
