// restart room
if (keyboard_check_pressed(ord("R")))
{
	room_restart();
}

if (keyboard_check_pressed(vk_f11) || keyboard_check_pressed(ord("F")))
{
	if (window_get_fullscreen())
	{
		window_set_fullscreen(false);
	}
	else
	{
		window_set_fullscreen(true);
	}
}

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
