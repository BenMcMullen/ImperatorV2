

galaxyLayer = layer_get_id("Galaxy");
spaceStationLayer = layer_get_id("SpaceStation");
planet1Layer = layer_get_id("Planet1");
planet2Layer = layer_get_id("Planet2");

//update camera destination
if (instance_exists(follow)) {
xTo = follow.x;
yTo = follow.y;

	if ((follow).object_index == obj_explosionPlayer)
	{
		x = xTo
		y = yTo
	}
}


//update object position
x += (xTo-x) /25;
y += (yTo-y) /25;

x=clamp(x,view_w_half,room_width-view_w_half);
y=clamp(y,view_h_half,room_height-view_h_half);

x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(galaxyLayer) {
layer_x(galaxyLayer,x/1.2)	
}
if(planet1Layer) {
layer_x(planet1Layer,x/2)	
}

if(planet2Layer) {
layer_x(planet2Layer,x/3)	
}

