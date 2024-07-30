if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (hp > 0) {
 var frigate = instance_find(obj_frigateShip, 0);
x = frigate.x;
y = frigate.y;

if (bridgeHit == true) {
bridgeHit = false;
bridgeStatus = 1;
alarm[0] = 10;
}
} else {
bridgeStatus = 2;

}