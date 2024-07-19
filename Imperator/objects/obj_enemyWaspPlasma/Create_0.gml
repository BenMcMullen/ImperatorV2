//create step of obj_enemyPlasma
rankDifficulty = global.playerInformation.rank.rankDifficulty;
levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
damage =  round((5 * rankDifficulty) * levelDifficulty);;
collision = false;
speed = 25;
