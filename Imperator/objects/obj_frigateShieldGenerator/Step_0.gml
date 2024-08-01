if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (hp > 0) {
 var frigate = instance_find(obj_frigateShip, 0);
x = frigate.x;
y = frigate.y;

if (shieldHit == true) {
shieldHit = false;
shieldStatus = 1;
alarm[0] = 10;
}
} else {
shieldStatus = 2;
global.frigateBridgeExposed = true;
if (secondSpawn) {
	secondSpawn = false;
with (obj_frigateShip) {
	spawnDefense = true;	
	}
}
with (obj_zzzHUD) {
		levelPhase = 2;
	}
}