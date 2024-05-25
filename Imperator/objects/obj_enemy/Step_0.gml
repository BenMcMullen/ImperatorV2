vsp = vsp+grv;

//collision horizontal
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x + sign(hsp),y,obj_wall)) {
		x += sign(hsp); 
}
hsp = -hsp;
}
	
x = x + hsp;

//collision vertical
if (place_meeting(x, y+vsp,obj_wall))
{
	while (!place_meeting(x, y + sign(vsp),obj_wall))
	{
		y += sign(vsp); 
	}
vsp = 0;

}	

x += hsp;
y += vsp;

//Character animations


if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

