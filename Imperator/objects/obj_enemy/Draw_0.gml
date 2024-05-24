draw_self();

if (flash > 0 && hp > 3)
{
	show_debug_message("The value when blue: " + string(hp));
	flash--;
shader_set(sh_blueShield);
draw_self();
shader_reset();
}
else if (flash > 0 && hp < 3) {
	show_debug_message("The value when red: " + string(hp));
		flash--;
shader_set(sh_redShield);
draw_self();
shader_reset();
}