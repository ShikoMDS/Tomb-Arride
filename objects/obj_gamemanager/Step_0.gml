// restart room
if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}

//if (keyboard_check_pressed(vk_f11) || keyboard_check_pressed(ord("F")))
//{
//	if (window_get_fullscreen())
//	{
//		window_set_fullscreen(false);
//	}
//	else
//	{
//		window_set_fullscreen(true);
//	}
//}

if (instance_number(obj_goal_parent) == goals_completed)
{
	if (instance_exists(obj_level_exit))
	{
		obj_level_exit.unlocked = true;
	}
}

if (keyboard_check_pressed(ord("O")))
{
	clear_level_data(level_data);
}


if (room != rm_menu && room != rm_controls && room != rm_credits)
{
	if (keyboard_check_pressed(vk_escape))
	{
		if (!game_paused)
		{
			game_paused = true;
			show_debug_message("Game Paused");
			
			//Create the pause menu button controller 
			instance_create_layer(0, 0, "Instances", obj_pause_control);
		}
		else
		{
			game_paused = false;
			show_debug_message("Game Resumed");
			
			if (instance_exists(obj_pause_control)) instance_destroy(obj_pause_control);
		}
	}
}