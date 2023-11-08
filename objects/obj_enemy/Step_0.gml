if (!game_paused)
{
	if (instance_exists(obj_player))
	{
		if (b_shot == false && dying == false)
		{
			if (!collision_line(x, y, obj_player.x, obj_player.y, obj_collision_parent, false, false))
			{
				b_player_seen = true
			}
			else
			{
				b_player_seen = false;
				if (choose_direction_timer_tick <= 0)
				{
					mp_potential_step(range_x, range_y, 0.5, false);
				
					choose_direction_timer_tick = choose_direction_timer;
					alarm[0] = 1.25 * 60;
				}
				choose_direction_timer_tick--;
			}

			if (b_player_seen == true)
			{
				mp_potential_step(obj_player.x, obj_player.y, 0.5, false);
			}
		}
	}


	if (xprevious < x)
	{
		image_xscale = 1;
	}

	if (xprevious > x)
	{
		image_xscale = -1;
	}
	
	var _box = instance_nearest(x, y, obj_box);
	
	if (place_meeting(x - box_range, y, _box))
	{
		if (_box.direction == 0 && _box.speed > 0)
		{
			b_shot = true;
			
			direction = 0;
			speed = 2;
			
			//Resets shot state
			alarm[1] = 20;
			
			//Resets movement speed to 0
			alarm[2] = 20;
		}
	}
	
	if (place_meeting(x + box_range, y, _box))
	{
		if (_box.direction == 180 && _box.speed > 0)
		{
			b_shot = true;
			
			direction = 180;
			speed = 2;
			
			//Resets shot state
			alarm[1] = 20;
			
			//Resets movement speed to 0
			alarm[2] = 20;
		}
	}
	
	if (place_meeting(x, y - box_range, _box))
	{
		if (_box.direction == 270 && _box.speed > 0)
		{
			b_shot = true;
			
			direction = 270;
			speed = 2;
			
			//Resets shot state
			alarm[1] = 20;
			
			//Resets movement speed to 0
			alarm[2] = 20;
		}
	}
	
	if (place_meeting(x, y + box_range, _box))
	{
		if (_box.direction == 90 && _box.speed > 0)
		{
			b_shot = true;
			
			direction = 90;
			speed = 2;
			
			//Resets shot state
			alarm[1] = 20;
			
			//Resets movement speed to 0
			alarm[2] = 20;
		}
	}


//Wall detection when sliding
	if (speed > 0)
	{
		if (direction == 0)
		{
			if (place_meeting(x + 1, y, obj_collision_parent))
			{
				dying = true;
			}
		}
		
		if (direction == 180)
		{
			if (place_meeting(x - 1, y, obj_collision_parent))
			{
				dying = true;
			}
		}
		
		if (direction == 270)
		{
			if (place_meeting(x, y + 1, obj_collision_parent))
			{
				dying = true;
			}
		}
		
		if (direction == 90)
		{
			if (place_meeting(x, y - 1, obj_collision_parent))
			{
				dying = true;
			}
		}
	}
}


if (dying = true)
{
	sprite_index = spr_mummy_death;

	if (!audio_is_playing(snd_squish))
	{
		audio_play_sound(snd_squish, 1, false, 1, 0, random_range(0.75, 1.25));
	}

	if (image_index > 7)
	{
		instance_destroy();
	}
}