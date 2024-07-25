draw_self();

var desiredHp = (global.desiredRepairs * global.selectedShip.hull.repairability) + global.selectedShip.hull.hp
if (desiredHp > global.selectedShip.hull.maxHp) {
desiredHp = global.selectedShip.hull.maxHp;	
}


  loseHpScale = max(1 * 0.95, 1);
	DrawSetText(c_black, font_veniteLarge, fa_left, fa_top);
	draw_text_transformed(x - 107, y - 134, "Points: " + string(global.playerInformation.points) , loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(x - 105, y - 136, "Points: " + string(global.playerInformation.points) , loseHpScale, loseHpScale, 0);
	
	
	draw_set_colour(c_black);
	draw_text_transformed(x - 77, y - 48, string(desiredHp) , loseHpScale, loseHpScale, 0);
	draw_set_colour(c_black);
	draw_text_transformed(x -20, y - 48, "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	
	draw_set_colour(c_yellow);
	if (desiredHp == global.selectedShip.hull.hp) {
		draw_set_colour(c_white);
	}
	draw_text_transformed(x -75, y - 50, string(desiredHp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(x -22, y - 50, "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	
	
	draw_set_colour(c_black);
	draw_text_transformed(x- 147, y + 20, "Repair Cost: ", loseHpScale, loseHpScale, 0);
	draw_set_colour(c_white);
	draw_text_transformed(x -145, y + 18, "Repair Cost: ", loseHpScale, loseHpScale, 0);
	
	
	
	
	draw_set_colour(c_black);
	draw_text_transformed(x + 92, y + 20, string(global.desiredRepairs * 100), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_yellow);
	if (global.desiredRepairs == 0) {
		draw_set_colour(c_white);
	}
	draw_text_transformed(x + 90, y + 18, string(global.desiredRepairs * 100), loseHpScale, loseHpScale, 0);
	
	
	