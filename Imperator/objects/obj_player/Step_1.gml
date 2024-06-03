if (hp <= 0)
{
	with (obj_playerWeapons) instance_destroy();
	instance_change(obj_explosionPlayer,true);
}
show_debug_message("The value when blue: " + string(hp));