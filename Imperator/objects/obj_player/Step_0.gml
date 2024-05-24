//player input
if (hasControl) 
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	key_jumping = keyboard_check(vk_space);
	key_jump = keyboard_check_pressed(vk_space);
}
else 
{
	key_right = 0;
	ley_left = 0;
	key_jump = 0;
	
}
//movement logic
var move = key_right - key_left;
var climb = key_up - key_down;
var on_floor = 0;
var jumping = 0;
var player_direction = 0;
hsp = move * walksp;

vsp = vsp+grv;

//jumping
if (place_meeting(x, y+1, obj_wall))
{
on_floor = 1;
if(key_jump)
{
	jumping = 1;
	vsp = -7;
}
}

//collision horizontal
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x + sign(hsp),y,obj_wall)) {
		x = x + sign(hsp); 
}
hsp = 0;
}
	
x = x + hsp;

//collision vertical
if (place_meeting(x, y+vsp,obj_wall))
{
	while (!place_meeting(x, y + sign(vsp),obj_wall))
	{
		y = y + sign(vsp); 
	}
vsp = 0;

}	

x = x + hsp;
y  = y + vsp;

//Character animations
if (key_jumping) 
{
	sprite_index = spr_waspJump;
	image_speed = 1;
}
else if (key_left || key_right)
{
	sprite_index = spr_waspMove;
	image_speed = 1;
}
else {
	sprite_index = spr_waspStatic;
	image_speed = 0;
}

if (hsp != 0) image_xscale = sign(hsp);