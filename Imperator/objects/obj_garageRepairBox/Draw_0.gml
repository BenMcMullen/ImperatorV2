// obj_garageDisplayBox Draw Event
draw_self(); // Draw the display box
var hpValue = "0";
var hpMaxValue = "0";
if (global.selectedShip.hull != noone) {
	hpValue = string(global.selectedShip.hull.hp)
}
if (global.selectedShip.hull != noone) {
	hpMaxValue = string(global.selectedShip.hull.maxHp)
}

  loseHpScale = max(1 * 0.95, 1);
	DrawSetText(c_black, font_veniteLarge, fa_left, fa_top);
	draw_text_transformed(x - 64, y - 134, hpValue + "/" + hpMaxValue, loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(x -62, y - 136, hpValue + "/" + hpMaxValue, loseHpScale, loseHpScale, 0);
