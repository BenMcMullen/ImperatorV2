// Initialize variables
x = obj_player.x;
y = obj_player.y;






primaryDelay = global.selectedShip.primaryWeapon.delay;
secondaryDelay = global.selectedShip.secondaryWeapon.delay;
cooldownTimer = global.selectedShip.primaryWeapon.cooldown;
capacity = global.selectedShip.primaryWeapon.capacity;
object = global.selectedShip.primaryWeapon.object;

playerDuration = 1; // This should match the player's direction initially
recoil = 0;
facingDirection = 270;
minAngle = 0;
maxAngle = 0;

shotsFired = 0;

cooldownDuration = 40; // 2 seconds, converted to steps
