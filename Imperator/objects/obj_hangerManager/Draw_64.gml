if (room == room_hangar)
{
	
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W * 0.5 - 50, 50, "Points: " + string(global.totalPoints));
	draw_set_colour(c_yellow);
	draw_text(RES_W - RES_W *0.5 - 48, 48, "Points: " + string(global.totalPoints));	
	
}