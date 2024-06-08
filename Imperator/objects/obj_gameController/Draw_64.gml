//Draw Score board


if (room != (room_menu || room_intro)) && (instance_exists(obj_player))
{
	loseHpScale = max(loseHpScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 12, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W - RES_W + 10, 10, "HP: " + string(obj_player.hp) + "/" + string(obj_player.max_hp), loseHpScale, loseHpScale, 0);
	
	if (global.itemMissiles) 
	{
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 88, "Missiles Enabled");
	draw_set_colour(c_yellow);
		draw_text(RES_W - RES_W + 10, 86, "Missiles Enabled");
	}
	
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 50, "Points: " + string(global.totalPoints));
	draw_set_colour(c_yellow);
	draw_text(RES_W - RES_W + 10, 48, "Points: " + string(global.totalPoints));	
	
}
	
	
if (room != room_menu || room_intro || room_testFlight) && (instance_exists(obj_player) && 
(!instance_exists(obj_introInstructions)) && global.hasContract)
{
if (!global.contractCompleted) 
	{
	DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text(RES_W - 8, 50, "Contract - " + string(global.contractQuantity) + " " + string(global.contractType));
	draw_set_colour(c_yellow);
		draw_text(RES_W -  10, 48, "Contract - " + string(global.contractQuantity) + " " + string(global.contractType));
	}
	if (global.contractCompleted)
	{
		DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text(RES_W - 8, 50, "Contract COMPLETED");
	draw_set_colour(c_yellow);
		draw_text(RES_W -  10, 48, "Contract COMPLETED");
	}
	
	killTextScale = max(killTextScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text_transformed(RES_W-8, 12, string(global.killsThisRoom) + " Targets Hunted - ", killTextScale, killTextScale,0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W-10, 10, string(global.killsThisRoom) + " Targets Hunted -", killTextScale, killTextScale,0);
	
	
}
