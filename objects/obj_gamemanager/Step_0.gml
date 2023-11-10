
#region//Fullscreen Control

// volume
audio_master_gain(global.volume_percent)

if (keyboard_check_pressed(vk_f11))
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


#endregion

#region//Clear Level Data


if (keyboard_check_pressed(ord("O")))
{
	clear_level_data(global.level_data);
	with (instance_create_layer(0, 0, "Instances", obj_fade_control))
	{
		target_room = rm_level_select;
		colour = c_black;	
	}
}


#endregion

#region//Exit Control


if (instance_number(obj_goal_parent) == goals_completed)
{
	if (instance_exists(obj_level_exit))
	{
		obj_level_exit.unlocked = true;
	}
}


#endregion

#region//Pause Control


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


#endregion

#region//Music Control

if (room != rm_level_select)
{
	if (audio_is_playing(snd_dance_music)) audio_stop_sound(snd_dance_music);
}

#endregion