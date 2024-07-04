if (shieldDown) {
	sprite = spr_beacon;
}
else {
sprite = spr_beaconShielded;	
}

draw_sprite(sprite, image_index, x, y);