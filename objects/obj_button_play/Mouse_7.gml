

if (is_clicked)
{
	if (!instance_exists(obj_fade_control))
	{
		with (instance_create_layer(0,0,"Instances",obj_fade_control))
		{
			target_room = rm_level_select;
			colour = c_black;
		}
	}
}