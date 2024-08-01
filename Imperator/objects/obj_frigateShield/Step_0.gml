if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

 var frigate = instance_find(obj_frigateShip, 0);
x = frigate.x;
y = frigate.y;

if (shieldHit == true) {
shieldHit = false;
shieldStatus = 1;
alarm[0] = 10;
}

if (instance_exists(obj_frigateShieldGenerator)) {
var shieldGenerator = instance_find(obj_frigateShieldGenerator, 0)
var generatorHp = shieldGenerator.hp
if (generatorHp <= 0) {
	
	audio_play_sound(snd_explosion1,10,false);
	instance_destroy();	
}
}