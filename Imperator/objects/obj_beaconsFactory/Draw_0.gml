if (!global.beaconFactoryImmune) {
	sprite = spr_beaconsFactory;
}
else {
sprite = spr_beaconsFactoryShielded;	
}

draw_sprite(sprite, image_index, x, y);