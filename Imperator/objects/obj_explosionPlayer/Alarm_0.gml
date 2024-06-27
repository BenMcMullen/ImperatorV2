//reset game speed
game_set_speed(60, gamespeed_fps);
DestroyShip();
GetCurrentLevel().completed = true;
if (GameOver() == true) {
	SlideTransition(TRANS_MODE.GOTO, room_end);
	DeleteFile(SAVEFILE)
} else {
LoadHangar();
}