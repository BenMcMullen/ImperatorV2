if (explosion_timer <= 0)
{
	instance_create_layer(x,y,layer,obj_debris)
	instance_destroy();
}