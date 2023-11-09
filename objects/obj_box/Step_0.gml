#region//Box Movement Code

if (place_snapped(16,16))
{
	speed = 0;
}

if (!box_locked)
{
	if (keyboard_check_pressed(vk_space))
	{	
		if (place_meeting(x - 10, y, obj_player))
		{
			direction = 0;
			speed = move_spd;
			audio_play_sound(snd_box_push, 1000, false, 1, 0, random_range(0.75, 1.25));
		}
		
		if (place_meeting(x + 10, y, obj_player))
		{
			direction = 180;
			speed = move_spd;
			audio_play_sound(snd_box_push, 1000, false, 1, 0, random_range(0.75, 1.25));
		}
		
		if (place_meeting(x, y - 10, obj_player))
		{
			direction = 270;
			speed = move_spd;
			audio_play_sound(snd_box_push, 1000, false, 1, 0, random_range(0.75, 1.25));
		}
		
		if (place_meeting(x, y + 10, obj_player))
		{
			direction = 90;
			speed = move_spd;
			audio_play_sound(snd_box_push, 1000, false, 1, 0, random_range(0.75, 1.25));
		}
	}
}

if (place_meeting(x, y, obj_goal_parent))
{
	box_locked = true;
}

#endregion