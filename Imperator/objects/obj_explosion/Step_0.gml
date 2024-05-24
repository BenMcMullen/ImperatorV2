
if (done == 0) 
{vsp = vsp+grv;

//collision horizontal
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x + sign(hsp),y,obj_wall)) {
		x += sign(hsp); 
}
hsp = 0;
}
	
x += hsp;

//collision vertical
if (place_meeting(x, y+vsp,obj_wall))
{
	if (vsp > 0) {done = 1;}
	while (!place_meeting(x, y + sign(vsp),obj_wall))
	{
		y += sign(vsp); 
	}
vsp = 0;

}	
}
if (explosion_timer > 0) {
    explosion_timer--;
}
else if (explosion_timer == 0) {
	
}