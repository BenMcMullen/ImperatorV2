//Draw Score board

if (room != room_menu) && (instance_exists(obj_player) && global.kills > 0)
{
	killTextScale = max(killTextScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text_transformed(RES_W-8, 12, string(global.kills) + "Targets Hunted -", killTextScale, killTextScale,0);
	draw_set_colour(c_white);
	draw_text_transformed(RES_W-10, 10, string(global.kills) + "Targets Hunted -", killTextScale, killTextScale,0);
	
	
	
	
}
