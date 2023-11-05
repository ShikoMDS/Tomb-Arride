if (!game_paused)
{
	if (instance_exists(obj_player))
	{
		if (b_shot == false)
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
					alarm[0] = 1.25 * room_speed;
				}
				choose_direction_timer_tick--;
			}

			if (b_player_seen == true)
			{
				mp_potential_step(obj_player.x,obj_player.y,0.5,false);
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
}