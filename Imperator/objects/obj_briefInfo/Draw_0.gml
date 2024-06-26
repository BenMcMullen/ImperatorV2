
with (obj_imperatorBubble) {
instance_destroy(obj_imperatorBubble)	
}
var boxWidth = sprite_get_width(spr_briefInfo);
var boxHeight = sprite_get_height(spr_briefInfo);
var boxX = (room_width - boxWidth) / 2;
var boxY = (room_height - boxHeight) / 2;

draw_sprite(spr_briefInfo, 0, boxX, boxY);

var textX = boxX + boxWidth / 2;
var textY = boxY + boxHeight / 2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white); 
if (other.completed) {
draw_text(textX, textY - 16, other.operationName);
draw_text(textX, textY + 32, "C O M P L E T E D");
}
else {
draw_text(textX, textY-32, other.operationName);
draw_text(textX, textY, "Commendations: " + string(other.commendations));
draw_text(textX, textY + 32, "Points: " + string(other.levelPoints));
draw_text(textX, textY + 64, "Type: " + string(other.levelType));
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // Reset text color to default
