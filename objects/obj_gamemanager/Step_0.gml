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
	if (NextLevelDelay <= 0)
	{
		if (room != Room2) // TEMPORARY FIX
		room_goto_next();
	}
	NextLevelDelay--

	//
	// Display choice to replay, quit to main menu, or go to level select\
	//
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