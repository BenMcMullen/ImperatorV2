
if (done ==0) 
{
	vsp = vsp+grv;

if (place_meeting(x,y+vsp,obj_wall))
{
if (vsp > 0)
{
	done = 1;
	alarm[0] = 60;
}
}

if (explosion_timer > 0) {
    explosion_timer--;
}
else if (explosion_timer == 0) {
	
}

}
