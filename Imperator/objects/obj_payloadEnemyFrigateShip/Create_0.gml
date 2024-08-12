spawn = true;
spawnDefense = false;

moveSpeed = -0.5;
movingLeft = GetObjectDirection(x); 
createImageAngle = 180;
if (movingLeft) {
	moveSpeed = 0.5
	createImageAngle = 0;
}

 depth = -1
 //alarm[2] = 10;
spawnedEnemies = 0;
enemy = GetRandomPayloadDefenseEnemyType();
enemyDefenders = GetRandomPayloadDefenseEnemyType();
enemyCount = GetCurrentLevel().levelType.frigateEnemyQuantity * GetDifficultyRankModifier();


var turret1 = instance_create_layer(x - 500, y - 400, "Enemy", obj_payloadFrigateTurret);
turret1.turretX = -500;
turret1.turretY = -400;
turret1.moveSpeed = moveSpeed;
var turret2 = instance_create_layer(x - 400, y - 400, "Enemy", obj_payloadFrigateMissileLauncher);
turret2.turretX = -400;
turret2.turretY = -400;
turret2.moveSpeed = moveSpeed;
var turret3 = instance_create_layer(x + 400, y - 400,	"Enemy", obj_payloadFrigateTurret);
turret3.turretX = + 400;
turret3.turretY = - 400;
turret3.moveSpeed = moveSpeed;
var turret4 = instance_create_layer(x + 800, y - 350, "Enemy", obj_payloadFrigateTurret);
turret4.turretX = + 800;
turret4.turretY = -350;
turret4.moveSpeed = moveSpeed;
var turret5 = instance_create_layer(x - 500, y + 400, "Enemy", obj_payloadFrigateTurret);
turret5.turretX = -500;
turret5.turretY = +400;
turret5.moveSpeed = moveSpeed;
var turret6 = instance_create_layer(x - 400, y + 400, "Enemy", obj_payloadFrigateMissileLauncher);
turret6.turretX = -400;
turret6.turretY = +400;
turret6.moveSpeed = moveSpeed;
var turret7 = instance_create_layer(x + 400, y + 400, "Enemy", obj_payloadFrigateTurret);
turret7.turretX = +400;
turret7.turretY = +400;
turret7.moveSpeed = moveSpeed;
var turret8 = instance_create_layer(x + 800, y + 350, "Enemy", obj_payloadFrigateTurret);
turret8.turretX = +800;
turret8.turretY = +350;
turret8.moveSpeed = moveSpeed;