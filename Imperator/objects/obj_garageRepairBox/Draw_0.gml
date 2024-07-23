// obj_garageDisplayBox Draw Event
draw_self(); // Draw the display box

  loseHpScale = max(1 * 0.95, 1);
	DrawSetText(c_black, font_veniteLarge, fa_left, fa_top);
	draw_text_transformed(x/2 +410, y - 134, string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(x/2 + 412, y- 136, string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
