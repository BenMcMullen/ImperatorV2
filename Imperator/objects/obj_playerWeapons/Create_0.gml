// Initialize variables
x = obj_player.x;
y = obj_player.y;





//TIME BETWEEN SHOTS
primaryDelay = 0;
secondaryDelay = 0;


//TIME BETWEEN MAGAZINES OF SHOTS
primaryCooldownDuration = global.selectedShip.primaryWeapon.cooldown;
secondaryCooldownDuration =  global.selectedShip.secondaryWeapon.cooldown;

//CAPACITY PER MAG
primaryCapacity = global.selectedShip.primaryWeapon.capacity;
secondaryCapacity = global.selectedShip.secondaryWeapon.capacity;


primaryCooldownTimer = 0;
secondaryCooldownTimer = 0;
primaryShotsFired = 0;
secondaryShotsFired = 0

playerDuration = 1; // This should match the player's direction initially
recoil = 0;
facingDirection = 270;
minAngle = 0;
maxAngle = 0;



; // 2 seconds, converted to steps
