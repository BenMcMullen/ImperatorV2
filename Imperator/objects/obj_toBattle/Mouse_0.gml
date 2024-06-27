//left down
sprite_index = spr_btnBattle;
image_index = 2;
image_speed = 0;

if (!currentLevel.completed && AllSystemsInstalled() != false) {
	alarm[0] = room_speed * .1;
}
else {
sprite_index = spr_btnBattle;
image_index = 3;
image_speed = 0;
}