//Draw Score board


if (room != (room_menu || room_intro)) && (instance_exists(obj_player))
{
	loseHpScale = max(loseHpScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 12, "HP: " + string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W - RES_W + 10, 10, "HP: " + string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	
	loseShieldsScale = max(loseShieldsScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 50, "Shields: " + string(global.selectedShip.shields.shieldStatic), loseShieldsScale, loseShieldsScale, 0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W - RES_W + 10, 48, "Shields: " + string(global.selectedShip.shields.shieldStatic), loseShieldsScale, loseShieldsScale, 0);
	
	
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 88, "Points: " + string(global.totalPoints));
	draw_set_colour(c_yellow);
	draw_text(RES_W - RES_W + 10, 86, "Points: " + string(global.totalPoints));	
	
	if (global.itemMissiles) 
	{
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 126, "Missiles Enabled");
	draw_set_colour(c_yellow);
	draw_text(RES_W - RES_W + 10, 124, "Missiles Enabled");
	}
	
	
	
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
