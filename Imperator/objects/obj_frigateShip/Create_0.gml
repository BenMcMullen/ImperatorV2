spawn = true;
spawnDefense = false;
firingParticleCannon = false;
 depth = -1
 alarm[2] = 10;
spawnedEnemies = 0;
enemy = GetRandomFrigateEnemyType();
enemyDefenders = GetRandomFrigateDefenseEnemyType();
enemyCount = GetCurrentLevel().levelType.quantity * GetDifficultyRankModifier();

var frigateBridge = instance_create_layer(x, y, "Enemy", obj_frigateBridge)
var frigateShieldGenerator = instance_create_layer(x, y, "Enemy", obj_frigateShieldGenerator)
var frigateShield = instance_create_layer(x, y, "Enemy", obj_frigateShield)
var frigateParticleCannon = instance_create_layer(x, y, "Enemy", obj_frigateParticleCannon)



var turret1 = instance_create_layer(x - 500, y - 400, "Enemy", obj_frigateTurret);
turret1.turretX = -500;
turret1.turretY = -400;
var turret2 = instance_create_layer(x - 400, y - 400, "Enemy", obj_frigateMissileLauncher);
turret2.turretX = -400;
turret2.turretY = -400;
var turret3 = instance_create_layer(x + 400, y - 400,	"Enemy", obj_frigateTurret);
turret3.turretX = + 400;
turret3.turretY = - 400;
var turret4 = instance_create_layer(x + 800, y - 350, "Enemy", obj_frigateTurret);
turret4.turretX = + 800;
turret4.turretY = -350;
var turret5 = instance_create_layer(x - 500, y + 400, "Enemy", obj_frigateTurret);
turret5.turretX = -500;
turret5.turretY = +400;
var turret6 = instance_create_layer(x - 400, y + 400, "Enemy", obj_frigateMissileLauncher);
turret6.turretX = -400;
turret6.turretY = +400;
var turret7 = instance_create_layer(x + 400, y + 400, "Enemy", obj_frigateTurret);
turret7.turretX = +400;
turret7.turretY = +400;
var turret8 = instance_create_layer(x + 800, y + 350, "Enemy", obj_frigateTurret);
turret8.turretX = +800;
turret8.turretY = +350;