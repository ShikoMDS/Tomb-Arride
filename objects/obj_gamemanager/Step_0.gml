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

if (instance_number(obj_goal_parent) == GoalsCompleted)
{
	with (instance_create_layer(0, 0, "Instances", obj_fade_control))
	{
		target_room = rm_level_select;
		colour = c_black;
	}
}

if (/*keyboard_check_pressed(vk_escape) || */keyboard_check_pressed(ord("P")))
{
	if (!GamePaused)
	{
		GamePaused = true;
		show_debug_message("Game Paused");
	}
	else
	{
		GamePaused = false;
		show_debug_message("Game Resumed");
	}
}