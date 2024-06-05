//Draw Score board



if (room != room_menu) && (instance_exists(obj_player))
{
	loseHpScale = max(loseHpScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 12, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W - RES_W + 10, 10, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp), loseHpScale, loseHpScale, 0);
	
	
	
	if (global.canPlayerFireMissiles) {
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 50, "Missiles Enabled");
	draw_set_colour(c_white);
		draw_text(RES_W - RES_W + 10, 48, "Missiles Enabled");
	
	
}
}
	
	





if (room != room_menu) && (instance_exists(obj_player) && global.kills > 0)
{
	killTextScale = max(killTextScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text_transformed(RES_W-8, 12, string(global.kills) + "Targets Hunted -", killTextScale, killTextScale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10, 10, string(global.kills) + "Targets Hunted -", killTextScale, killTextScale,0);
	
	
}
