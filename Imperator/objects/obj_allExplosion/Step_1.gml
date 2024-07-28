
image_xscale = size;
image_yscale = size;

if (explosion_timer <= 0)
{
	var debris = instance_create_layer(x,y,layer,obj_debris)
	
    debris.size = size;
	
	with (debris) {
    size = size;
}

	instance_destroy();
	
	
}