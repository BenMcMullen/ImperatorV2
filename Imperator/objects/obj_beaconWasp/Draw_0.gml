draw_self();

if (flash > 0 && hp > 3)
{
	flash--;
shader_set(sh_blueShield);
draw_self();
shader_reset();
}
else if (flash > 0 && hp < hp/4) {
		flash--;
shader_set(sh_redShield);
draw_self();
shader_reset();
}