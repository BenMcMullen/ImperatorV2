vsp = vsp+grv; //adjust vertical speed for gravity

//don't walk off of edges

if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,obj_wall))
{
	hsp = -hsp
}

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

if (!place_meeting(x,y+1,obj_wall))
{
	grounded = false;
}
else {
	grounded = true
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;

