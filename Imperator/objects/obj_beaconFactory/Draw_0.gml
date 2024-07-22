if (!global.beaconFactoryImmune) {
	sprite = spr_beaconsFactory;
}
else {
sprite = spr_beaconsFactoryShielded;	
}

draw_sprite(sprite, image_index, x, y);

if (flash > 0 && hp > 3)
{
	flash--;
shader_set(sh_blueShield);
draw_self();
shader_reset();
}
else if (flash > 0 && hp < 3) {
		flash--;
shader_set(sh_redShield);
draw_self();
shader_reset();
}