
draw_sprite(spr_hangarRank, 0, RES_W /2, RES_H - RES_H + 8);

	DrawSetText(c_black, font_veniteRank, fa_left, fa_top);
	draw_text(RES_W /2 - 150, 20, "Rank: " + string(global.playerInformation.rank.title));
	draw_set_colour(c_white);
	draw_text(RES_W /2 - 148, 18, "Rank: " + string(global.playerInformation.rank.title));	
	