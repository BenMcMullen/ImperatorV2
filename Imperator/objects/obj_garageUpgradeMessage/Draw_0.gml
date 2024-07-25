

var messageText = other.messageText;
draw_set_font(font_veniteMedium)

    var boxWidth = sprite_get_width(spr_garageMessage);
    var boxHeight = sprite_get_height(spr_garageMessage);
    var boxX = (room_width - boxWidth) / 2;
    var boxY = (room_height - boxHeight) / 2;

    draw_sprite(spr_garageMessage, 0, boxX, boxY);
    
    var textX = boxX + boxWidth / 2;
    var textY = boxY + boxHeight / 2;

    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text(textX, textY, messageText);
	draw_set_color(c_white);
	draw_text(textX +2, textY-2, messageText);