//create
readyToGo = false;
currentLevel = GetCurrentLevel();
if (currentLevel.completed) {
sprite_index = spr_btnBattle;
image_index = 3;
image_speed = 0;
}
else {
	sprite_index = spr_btnBattle;
image_index = 0;
image_speed = 0;
//Setting the sprite to be gray if the level is already completed.
}