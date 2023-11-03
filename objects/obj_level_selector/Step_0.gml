
if (place_meeting(x, y, obj_box))
{
	if (!instance_exists(obj_fade_control))
	{
		//with (instance_create_layer(0,0,"Instances",obj_fade_control))
		//{
		//	target_room = id.rm;
		//	colour = c_black;
		//}
		
		var _fade_control = (instance_create_layer(0, 0, "Instances", obj_fade_control));
		
		_fade_control.target_room = id.rm;
		_fade_control.colour = c_black;
	}
}