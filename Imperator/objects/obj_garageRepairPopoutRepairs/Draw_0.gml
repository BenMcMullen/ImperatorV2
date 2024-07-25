var sprite = spr_garageRepairPopoutMakeRepairs
if (global.desiredRepairs == 0) {
	sprite = spr_garageRepairPopoutCancelRepairs
}




draw_sprite(sprite, image_index, x, y);