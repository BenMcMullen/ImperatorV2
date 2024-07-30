//create step of obj_enemyGuardPlasma
depth = -10
rankDifficulty = global.playerInformation.rank.rankDifficulty;
levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
damage =  round((10 * rankDifficulty) * levelDifficulty);
collision = false;
projectileSpeed = 50;
