
if (!instance_exists(obj_fade_control))
{
	with (instance_create_layer(0,0,"Instances",obj_fade_control))
	{
		target_room = rm_tutorial_1;
		colour = c_black;
	}
}