var array_index = other.array_index;
var systemType = other.systemType;
var upgradeInfo = GetUpgradeInfo(array_index, systemType); // Get the formatted upgrade info

var boxWidth = sprite_get_width(spr_garageUpgradeInfo);
var boxHeight = sprite_get_height(spr_garageUpgradeInfo);
var boxX = (room_width - boxWidth) / 2;
var boxY = (room_height - boxHeight) / 2;

draw_sprite(spr_garageUpgradeInfo, 0, boxX, boxY);

var textX = boxX + boxWidth / 2;
var textY = boxY + boxHeight / 2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_yellow); // Set text color to yellow
draw_text(textX, textY, upgradeInfo);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // Reset text color to default
