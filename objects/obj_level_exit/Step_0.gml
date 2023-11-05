

if (unlocked)
{
	if (instance_exists(obj_player))
	{
		if (place_meeting(x, y, obj_player))
		{
			//Janky way of freezing player but it works
			obj_player.x = x;
			obj_player.y = y;
			
			with (instance_create_layer(0, 0, "Instances", obj_fade_control))
			{
				target_room = rm_level_select;
				colour = c_black;	
			}
		}
	}
}