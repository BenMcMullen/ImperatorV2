//reset game speed
game_set_speed(60, gamespeed_fps);
global.selectedShip.destroyed = true;
if (GameOver() == true) {
	SlideTransition(TRANS_MODE.GOTO, room_end);
	DeleteFile(SAVEFILE)
} else {
LoadHangar();
}