

if (unlocked)
{
	sprite_index = spr_level_exit;
	if (instance_exists(obj_player))
	{
		if (place_meeting(x, y, obj_player))
		{
			//Janky way of freezing player but it works
			obj_player.x = x;
			obj_player.y = y;
			
			if (room != rm_tutorial_1 && room != rm_tutorial_2)
			{
				with (instance_create_layer(0, 0, "Instances", obj_fade_control))
				{
					target_room = rm_level_select;
					colour = c_black;	
				}
			}
			else if (room == rm_tutorial_1)
			{
				with (instance_create_layer(0, 0, "Instances", obj_fade_control))
				{
					target_room = room_next(room);
					colour = c_black;	
				}
			}
			else if (room == rm_tutorial_2)
			{
				with (instance_create_layer(0, 0, "Instances", obj_fade_control))
				{
					target_room = rm_menu;
					colour = c_black;
				}
			}
		}
	}
}