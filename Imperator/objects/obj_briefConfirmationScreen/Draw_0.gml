/// @description Insert description here
// You can write your code in this editor



var messageText = other.missionName;
	draw_set_color(c_white); // Set text color to yellow
    var boxWidth = sprite_get_width(spr_briefMessage);
    var boxHeight = sprite_get_height(spr_briefMessage);
    var boxX = (room_width - boxWidth) / 2;
    var boxY = (room_height - boxHeight) / 2;

    draw_sprite(spr_briefMessage, 0, boxX, boxY);
    
    var textX = boxX + boxWidth / 2;
    var textY = boxY + boxHeight / 2;
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(textX, textY, messageText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
	