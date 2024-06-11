draw_self();

if (flash > 0 && global.selectedShip.hull.hp > 3)
{
	show_debug_message("The value when blue: " + string(global.selectedShip.hull.hp));
	flash--;
shader_set(sh_blueShield);
draw_self();
shader_reset();
}
else if (flash > 0 && global.selectedShip.hull.hp < 3) {
	show_debug_message("The value when red: " + string(global.selectedShip.hull.hp));
		flash--;
shader_set(sh_redShield);
draw_self();
shader_reset();
}