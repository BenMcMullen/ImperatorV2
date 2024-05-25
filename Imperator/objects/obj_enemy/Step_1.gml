if (hp <= 0)
{
	with(instance_create_layer(x,y,layer,obj_explosion))
	debris = true;
	{
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	instance_destroy();
}

