//create step of obj_enemyGuardPlasma
depth = -10
rankDifficulty = global.playerInformation.rank.rankDifficulty;
levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
damage =  25 * GetDifficultyRankModifier();
collision = false;
projectileSpeed = 30;
