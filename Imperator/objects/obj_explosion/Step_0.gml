	
if (explosion_timer > 0) {
    explosion_timer--;
}
else if (explosion_timer == 0) {
	
}

if (hsp != 0) image_xscale = sign(hsp) * obj_enemy.size;
image_yscale = obj_enemy.size;
