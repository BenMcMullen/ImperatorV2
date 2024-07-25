



var messageText = other.messageText;
draw_set_font(font_veniteLarge)

    var boxWidth = sprite_get_width(spr_bridgeUnlock);
    var boxHeight = sprite_get_height(spr_bridgeUnlock);
    var boxX = (room_width) / 2;
    var boxY = (room_height) / 2;

    draw_sprite(spr_bridgeUnlock, 0, boxX, boxY);
	 draw_sprite(other.shipSprite, 0, boxX /1.5 -32, boxY);
    
    var textX = boxX;
    var textY = boxY - 80

 
	var max_width = 350; // Maximum width before wrapping
var line_height = 32; // Height of each line, adjust as needed


var words = WrapImperatorDialogue(string(messageText), max_width);

var num_lines = array_length(words);

// Draw each line
for (var i = 0; i < num_lines; i++) {
       draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_text(textX +162, textY + i * line_height, words[i]);
	draw_set_color(c_white);
	draw_text(textX +164, textY + i * line_height - 2, words[i]);
	
	
}